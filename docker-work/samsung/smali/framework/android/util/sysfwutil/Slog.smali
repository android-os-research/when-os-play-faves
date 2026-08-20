.class public final Landroid/util/sysfwutil/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOG0_PATH:Ljava/lang/String; = "/data/log/sfslog.0.gz"

.field private static final blacklist LOG1_PATH:Ljava/lang/String; = "/data/log/sfslog.1.gz"

.field private static final blacklist PATH_ENABLE_KERNEL_LOGGING:Ljava/lang/String; = "/sdcard/Download/usbfwlog"

.field private static final blacklist TAG:Ljava/lang/String; = "SFSLOG"

.field private static blacklist kernelLogPrefix:Ljava/lang/String;

.field private static blacklist mLock:Ljava/lang/Object;

.field private static blacklist mSlogInstance:Landroid/util/sysfwutil/Slog;


# instance fields
.field private blacklist mCurentFileSize:J

.field private blacklist mLinesToDump:I

.field private blacklist mLogFile:Ljava/io/File;

.field private blacklist mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxLogFileSize:I

.field private blacklist mSfSlogEnable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    const-string v0, ""

    sput-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Landroid/util/sysfwutil/Slog;->mSlogInstance:Landroid/util/sysfwutil/Slog;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/sysfwutil/Slog;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Download/usbfwlog"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 80
    const-string v1, "!@"

    sput-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    goto :goto_27

    .line 82
    :cond_20
    const-string v1, "SFSLOG"

    const-string v2, "No KERNEL_LOG_PREFIX!"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "file":Ljava/io/File;
    :goto_27
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/sysfwutil/Slog;->mSfSlogEnable:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    .line 88
    const/16 v0, 0x32

    iput v0, p0, Landroid/util/sysfwutil/Slog;->mLinesToDump:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    .line 95
    invoke-direct {p0}, Landroid/util/sysfwutil/Slog;->initParam()V

    .line 96
    return-void
.end method

.method private declared-synchronized blacklist addMsgToList(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "force"    # Z

    monitor-enter p0

    .line 150
    :try_start_1
    iget-boolean v0, p0, Landroid/util/sysfwutil/Slog;->mSfSlogEnable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_97

    if-nez v0, :cond_7

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "tid":Ljava/lang/String;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    const-string/jumbo v2, "yy-MM-dd (z) HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "strNow":Ljava/lang/String;
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMsgToList mLogList.size() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLinesToDump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/sysfwutil/Slog;->mLinesToDump:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strNow["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/util/sysfwutil/Slog;->mLinesToDump:I

    if-ge v2, v3, :cond_92

    if-eqz p2, :cond_95

    .line 165
    :cond_92
    invoke-direct {p0}, Landroid/util/sysfwutil/Slog;->dumpLogsToTheFile()V
    :try_end_95
    .catchall {:try_start_7 .. :try_end_95} :catchall_97

    .line 167
    :cond_95
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "tid":Ljava/lang/String;
    .end local v1    # "strNow":Ljava/lang/String;
    .end local p0    # "this":Landroid/util/sysfwutil/Slog;
    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "force":Z
    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 267
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 268
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 270
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 273
    :cond_5d
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 278
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 279
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 281
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 284
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private blacklist dumpLogsToTheFile()V
    .registers 9

    .line 181
    const-string v0, "dumpLogsToTheFile++"

    invoke-static {v0}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    if-nez v0, :cond_a

    .line 184
    return-void

    .line 187
    :cond_a
    const/4 v0, 0x0

    .line 188
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 189
    .local v1, "cos":Landroid/util/sysfwutil/CountingOutputStream;
    const/4 v2, 0x0

    .line 190
    .local v2, "gzos":Ljava/util/zip/GZIPOutputStream;
    iget-object v3, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 192
    .local v3, "iterator":Ljava/util/Iterator;
    :try_start_13
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v4

    .line 193
    new-instance v4, Landroid/util/sysfwutil/CountingOutputStream;

    invoke-direct {v4, v0}, Landroid/util/sysfwutil/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 194
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 195
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "element":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 198
    .end local v4    # "element":Ljava/lang/String;
    goto :goto_28

    .line 199
    :cond_3e
    iget-wide v4, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    invoke-virtual {v1}, Landroid/util/sysfwutil/CountingOutputStream;->getCount()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_58
    .catchall {:try_start_13 .. :try_end_47} :catchall_55

    .line 204
    nop

    .line 205
    :try_start_48
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 207
    nop

    .line 208
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4f} :catch_50

    .line 212
    :cond_4f
    :goto_4f
    goto :goto_7a

    .line 210
    :catch_50
    move-exception v4

    .line 211
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_7a

    .line 203
    :catchall_55
    move-exception v4

    goto/16 :goto_109

    .line 200
    :catch_58
    move-exception v4

    .line 201
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_55

    .line 204
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_74

    .line 205
    :try_start_71
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 207
    :cond_74
    if-eqz v0, :cond_4f

    .line 208
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_50

    goto :goto_4f

    .line 214
    :goto_7a
    iget-object v4, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpLogsToTheFile: mCurentFileSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 218
    iget-wide v4, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    iget v6, p0, Landroid/util/sysfwutil/Slog;->mMaxLogFileSize:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_103

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpLogsToTheFile: swap file, current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/log/sfslog.0.gz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 221
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/sfslog.1.gz"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    goto :goto_db

    .line 223
    :cond_d4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    .line 225
    :goto_db
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpLogsToTheFile: swap file, new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 227
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    .line 228
    invoke-direct {p0}, Landroid/util/sysfwutil/Slog;->updatePermissions()V

    .line 231
    :cond_103
    const-string v4, "dumpLogsToTheFile--"

    invoke-static {v4}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 232
    return-void

    .line 204
    :goto_109
    if-eqz v2, :cond_111

    .line 205
    :try_start_10b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_111

    .line 210
    :catch_10f
    move-exception v5

    goto :goto_117

    .line 207
    :cond_111
    :goto_111
    if-eqz v0, :cond_11b

    .line 208
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_116} :catch_10f

    goto :goto_11b

    .line 211
    .local v5, "e":Ljava/io/IOException;
    :goto_117
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11c

    .line 212
    .end local v5    # "e":Ljava/io/IOException;
    :cond_11b
    :goto_11b
    nop

    .line 213
    :goto_11c
    throw v4
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 337
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 338
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 340
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 343
    :cond_5d
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 348
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 349
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 351
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 354
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static blacklist getInstance()Landroid/util/sysfwutil/Slog;
    .registers 2

    .line 67
    sget-object v0, Landroid/util/sysfwutil/Slog;->mSlogInstance:Landroid/util/sysfwutil/Slog;

    if-nez v0, :cond_17

    .line 68
    sget-object v0, Landroid/util/sysfwutil/Slog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_7
    sget-object v1, Landroid/util/sysfwutil/Slog;->mSlogInstance:Landroid/util/sysfwutil/Slog;

    if-nez v1, :cond_12

    .line 70
    new-instance v1, Landroid/util/sysfwutil/Slog;

    invoke-direct {v1}, Landroid/util/sysfwutil/Slog;-><init>()V

    sput-object v1, Landroid/util/sysfwutil/Slog;->mSlogInstance:Landroid/util/sysfwutil/Slog;

    .line 72
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 74
    :cond_17
    :goto_17
    sget-object v0, Landroid/util/sysfwutil/Slog;->mSlogInstance:Landroid/util/sysfwutil/Slog;

    return-object v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 289
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 290
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 292
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 295
    :cond_5d
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 300
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 301
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 303
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 306
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private blacklist initParam()V
    .registers 7

    .line 99
    const-string/jumbo v0, "initParam++"

    invoke-static {v0}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "persist.sys.sfslog.maxfilesize"

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/sysfwutil/Slog;->mMaxLogFileSize:I

    .line 101
    if-gtz v0, :cond_16

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/Slog;->mSfSlogEnable:Z

    .line 105
    :cond_16
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/sfslog.0.gz"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "t0":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/sfslog.1.gz"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "t1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3e

    move-object v2, v1

    goto :goto_3f

    :cond_3e
    move-object v2, v0

    :goto_3f
    iput-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    goto :goto_4d

    .line 110
    :cond_42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 111
    iput-object v1, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    goto :goto_4d

    .line 113
    :cond_4b
    iput-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    .line 116
    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam: choose "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 119
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_84

    .line 120
    const-string/jumbo v2, "initParam: warning /data/log is absent "

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 124
    :cond_84
    invoke-direct {p0}, Landroid/util/sysfwutil/Slog;->updatePermissions()V

    .line 126
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam mSfSlogEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/sysfwutil/Slog;->mSfSlogEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam mLinesToDump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/sysfwutil/Slog;->mLinesToDump:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam mMaxLogFileSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/sysfwutil/Slog;->mMaxLogFileSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initParam mCurentFileSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/sysfwutil/Slog;->mCurentFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogList:Ljava/util/List;

    const-string v3, "============== Booting up ============== \n"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private static blacklist localLogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 235
    const-string v0, "SFSLOG"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private static blacklist localLogV(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 242
    return-void
.end method

.method private declared-synchronized blacklist onShutdown()V
    .registers 2

    monitor-enter p0

    .line 176
    :try_start_1
    const-string/jumbo v0, "shutdown"

    invoke-static {v0}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Landroid/util/sysfwutil/Slog;->dumpLogsToTheFile()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 178
    monitor-exit p0

    return-void

    .line 175
    .end local p0    # "this":Landroid/util/sysfwutil/Slog;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized blacklist shutdown()V
    .registers 2

    const-class v0, Landroid/util/sysfwutil/Slog;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 171
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v1

    invoke-direct {v1}, Landroid/util/sysfwutil/Slog;->onShutdown()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 173
    :cond_10
    monitor-exit v0

    return-void

    .line 169
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist updatePermissions()V
    .registers 5

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 139
    iget-object v0, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    .line 139
    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 146
    goto :goto_3d

    .line 144
    :catch_15
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initParam: error set permissions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/sysfwutil/Slog;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/sysfwutil/Slog;->localLogE(Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3d
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 245
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 246
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 248
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 251
    :cond_5d
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 256
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 257
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 259
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 262
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 311
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 312
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 314
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 317
    :cond_5d
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 322
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 323
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 325
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 328
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 333
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist who(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 19
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 398
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 399
    .local v3, "stackTraceLength":I
    const/4 v4, 0x4

    .line 401
    .local v4, "maxLines":I
    array-length v5, v2

    if-lez v5, :cond_12

    array-length v5, v2

    if-ge v5, v4, :cond_12

    .line 402
    array-length v3, v2

    goto :goto_16

    .line 403
    :cond_12
    array-length v5, v2

    if-le v5, v4, :cond_16

    .line 404
    move v3, v4

    .line 407
    :cond_16
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stackTraceLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 409
    sget-object v5, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v6, "!@"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " Done"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ": "

    const-string v10, "D "

    if-eqz v5, :cond_141

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "]"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "exTitle":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v12

    if-eqz v12, :cond_91

    .line 412
    const-string v12, "Print exTitle 1 at SFSLOG"

    invoke-static {v12}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v8}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 415
    :cond_91
    const-string v12, "Print exTitle 1"

    invoke-static {v12}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 416
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-lez v3, :cond_f1

    .line 418
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_9c
    if-ge v12, v3, :cond_f1

    .line 419
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v2, v12

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 420
    .local v13, "exStackMsg":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v14

    if-eqz v14, :cond_eb

    .line 421
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v8}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 423
    :cond_eb
    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v13    # "exStackMsg":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_9c

    .line 426
    .end local v12    # "p":I
    :cond_f1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "]Print StackTrace of "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "exEndStr":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v8

    if-eqz v8, :cond_13c

    .line 428
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 430
    :cond_13c
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    return v7

    .line 432
    .end local v5    # "exTitle":Ljava/lang/String;
    .end local v6    # "exEndStr":Ljava/lang/String;
    :cond_141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
    .restart local v5    # "exTitle":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v11

    if-eqz v11, :cond_183

    .line 434
    const-string v11, "Print exTitle 2 at SFSLOG"

    invoke-static {v11}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v8}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 437
    :cond_183
    const-string v11, "Print exTitle 2"

    invoke-static {v11}, Landroid/util/sysfwutil/Slog;->localLogV(Ljava/lang/String;)V

    .line 438
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-lez v3, :cond_1db

    .line 440
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_18e
    if-ge v11, v3, :cond_1db

    .line 441
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v2, v11

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 442
    .local v12, "exStackMsg":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v13

    if-eqz v13, :cond_1d5

    .line 443
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 445
    :cond_1d5
    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v12    # "exStackMsg":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_18e

    .line 448
    .end local v11    # "p":I
    :cond_1db
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "Print StackTrace of "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 449
    .restart local v6    # "exEndStr":Ljava/lang/String;
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v8

    if-eqz v8, :cond_21e

    .line 450
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 452
    :cond_21e
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 364
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 365
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WTF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 367
    :cond_2b
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 385
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 386
    invoke-static {}, Landroid/util/sysfwutil/Slog;->getInstance()Landroid/util/sysfwutil/Slog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WTF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/sysfwutil/Slog;->addMsgToList(Ljava/lang/String;Z)V

    .line 388
    :cond_2b
    sget-object v0, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    const-string v1, "!@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/sysfwutil/Slog;->kernelLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 391
    :cond_5d
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 376
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
