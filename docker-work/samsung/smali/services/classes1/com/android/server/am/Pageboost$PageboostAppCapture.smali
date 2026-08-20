.class public final Lcom/android/server/am/Pageboost$PageboostAppCapture;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostAppCapture"
.end annotation


# static fields
.field public static final CAPTURE_FILE_APK:I = 0x1

.field public static final CAPTURE_FILE_MAP:I = 0x2

.field public static final CAPTURE_FILE_MAP_TIMEOUT:I = 0x3e8

.field public static final CAPTURE_RECORD:I = 0x3

.field public static final DATA_AMOUNT_PER_BYTE:I = 0x8000

.field public static final MAX_APK_FILE_SIZE:I = 0x3200000

.field public static final MAX_MAP_DBENTRY_SIZE:I = 0x20000

.field public static final MAX_MAP_FILE_SIZE:I = 0x9600000

.field public static final PAGEBOOST_IO_PREFETCH_LEVEL:I

.field public static record_ongoing:Z = false


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPAGEBOOST_IO_PREFETCH_LEVEL()I
    .registers 1

    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.level"

    const/4 v1, 0x3

    .line 1975
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 4

    .line 2047
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_9

    .line 2048
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_c

    .line 2050
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    :goto_c
    return-void
.end method

.method public static captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V
    .registers 7

    .line 2070
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_71

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 2072
    sput-boolean v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-nez v1, :cond_18

    .line 2074
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "captureFinished requested for null app"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2077
    :cond_18
    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->-$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2078
    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2079
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2080
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureFinished success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 2083
    :cond_43
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 2084
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "captureFinished fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordEnd,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/Pageboost$IoRecord;->-$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method public static check64Bit(I)Z
    .registers 7

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return v0

    .line 2007
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/exe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2009
    :try_start_1f
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_5b

    const/4 v2, 0x6

    :try_start_28
    new-array v2, v2, [B

    const-string/jumbo v3, "\u007fELF"

    const-string v4, "UTF-8"

    .line 2011
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 2012
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v4, 0x4

    .line 2018
    invoke-static {v2, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    aget-byte v2, v2, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    move v2, v0

    .line 2023
    :goto_49
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_51

    .line 2024
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_5b

    move v0, v2

    goto :goto_5f

    :catchall_51
    move-exception v2

    .line 2009
    :try_start_52
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v1

    :try_start_57
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw v2
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v1

    .line 2025
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2028
    :goto_5f
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "64 bit checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCaptureTarget(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    const-string v1, "/data"

    .line 1990
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "/system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "/product"

    .line 1991
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_1b
    const/4 v1, 0x1

    const-string v2, "/data/misc"

    .line 1994
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "(deleted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :cond_2e
    :goto_2e
    return v0
.end method

.method public static isRecordingCapture()Z
    .registers 2

    .line 2043
    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRecordingTarget(Ljava/lang/String;Z)Z
    .registers 4

    .line 2057
    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    if-eqz p1, :cond_14

    .line 2059
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_22

    :cond_14
    if-nez p1, :cond_21

    .line 2061
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public static needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isFullyExecuted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2035
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getCapturedLevel()I

    move-result p0

    sget v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ge p0, v0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static record(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 4

    .line 2091
    sget-boolean v0, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v0, :cond_1e

    .line 2092
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "record is ongoing. Abort for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    if-lez p1, :cond_58

    .line 2097
    new-instance v0, Lcom/android/server/am/Pageboost$IoRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/Pageboost$IoRecord;-><init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    .line 2098
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, 0x1

    .line 2099
    sput-boolean p1, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    .line 2100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordStart,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getGameApp()Z

    move-result p0

    const/16 p1, 0xf

    if-eqz p0, :cond_53

    const p0, 0x88b8

    .line 2102
    invoke-static {p1, v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_58

    :cond_53
    const/16 p0, 0x1388

    .line 2104
    invoke-static {p1, v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    :cond_58
    :goto_58
    return-void
.end method

.method public static snapshot(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2117
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    if-eqz v2, :cond_259

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_259

    .line 2120
    :cond_16
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    if-eqz v2, :cond_259

    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_259

    .line 2124
    :cond_28
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Capture start for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2126
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_61

    return-void

    :cond_61
    const/4 v2, 0x2

    .line 2131
    sget v3, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const-wide/16 v7, 0x0

    if-gt v2, v3, :cond_1ad

    .line 2132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2134
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result v9

    .line 2137
    new-instance v10, Lcom/android/server/am/Pageboost$FileMapList;

    invoke-direct {v10, v1}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    .line 2139
    invoke-virtual {v10}, Lcom/android/server/am/Pageboost$FileMapList;->isCorrect()Z

    move-result v11

    if-eqz v11, :cond_1ad

    .line 2141
    invoke-static {v10}, Lcom/android/server/am/Pageboost$FileMapList;->-$$Nest$fgetmFiles(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v13, v7

    move-wide v15, v13

    const/4 v11, 0x0

    :goto_8a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_177

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    .line 2142
    invoke-static {v5}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9f

    goto :goto_8a

    :cond_9f
    if-eqz v9, :cond_ac

    .line 2147
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygote64FileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ac

    goto :goto_8a

    :cond_ac
    if-nez v9, :cond_b9

    .line 2149
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmZygoteFileMap()Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b9

    goto :goto_8a

    .line 2153
    :cond_b9
    new-instance v12, Lcom/android/server/am/Pageboost$FileMapInfo;

    invoke-direct {v12, v1}, Lcom/android/server/am/Pageboost$FileMapInfo;-><init>(I)V

    .line 2154
    invoke-virtual {v12}, Lcom/android/server/am/Pageboost$FileMapInfo;->isCorrect()Z

    move-result v18

    move/from16 v19, v9

    const-string v9, "/"

    if-eqz v18, :cond_136

    move-object/from16 v18, v10

    .line 2155
    iget-object v10, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    move/from16 v20, v11

    const/4 v11, 0x1

    invoke-static {v12, v5, v11, v6, v10}, Lcom/android/server/am/Pageboost$FileMapInfo;->-$$Nest$mgetFileMapInfo(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object v5

    const/4 v10, 0x0

    if-eqz v5, :cond_13b

    .line 2157
    aget-wide v20, v5, v10

    .line 2158
    aget-wide v22, v5, v11

    add-long v7, v7, v20

    add-long v13, v13, v20

    add-long v11, v15, v22

    const-wide/32 v15, 0x9600000

    cmp-long v5, v13, v15

    if-lez v5, :cond_108

    .line 2164
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IO Capture \'map\' over limit : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v9, 0x9600000

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :cond_108
    const-wide/32 v15, 0x20000

    cmp-long v5, v11, v15

    if-lez v5, :cond_133

    .line 2168
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO Capture \'map\' over dbsize limit : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v9, 0x20000

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12f
    move-wide v9, v7

    move-wide v7, v13

    const/4 v5, 0x1

    goto :goto_17d

    :cond_133
    move-wide v15, v11

    const/4 v11, 0x1

    goto :goto_13d

    :cond_136
    move-object/from16 v18, v10

    move/from16 v20, v11

    const/4 v10, 0x0

    :cond_13b
    move/from16 v11, v20

    .line 2175
    :goto_13d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move v5, v11

    sub-long v10, v20, v2

    const-wide/16 v20, 0x3e8

    cmp-long v12, v10, v20

    if-lez v12, :cond_16d

    .line 2177
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    const-string v5, "IO Capture \'map\' timed out : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e8

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    :cond_16d
    move/from16 v20, v5

    move-object/from16 v10, v18

    move/from16 v9, v19

    move/from16 v11, v20

    goto/16 :goto_8a

    :cond_177
    move/from16 v20, v11

    :goto_179
    move-wide v9, v7

    move-wide v7, v13

    move/from16 v5, v20

    .line 2181
    :goto_17d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2182
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO Capture \'mapped files\' pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v11, v2

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v7

    move-wide v2, v9

    goto :goto_1b0

    :cond_1ad
    move-wide v2, v7

    move-wide v12, v2

    const/4 v5, 0x0

    .line 2186
    :goto_1b0
    sget v14, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    const/4 v15, 0x1

    if-gt v15, v14, :cond_213

    .line 2187
    iget-object v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    if-eqz v7, :cond_213

    .line 2188
    invoke-static {v7}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_213

    .line 2189
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_213

    .line 2191
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    const/high16 v9, 0x3200000

    if-le v8, v9, :cond_1d5

    move v11, v9

    goto :goto_1d6

    :cond_1d5
    move v11, v8

    :goto_1d6
    const v8, 0x8000

    .line 2195
    div-int v10, v11, v8

    if-lez v10, :cond_213

    .line 2197
    new-array v9, v10, [B

    const/4 v5, -0x1

    .line 2198
    invoke-static {v9, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 2199
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v16, 0x0

    move v15, v11

    move/from16 v11, v16

    invoke-static/range {v5 .. v11}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 2200
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Capture \'apk\', pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v5, v15

    add-long/2addr v2, v5

    const/4 v5, 0x1

    :cond_213
    if-eqz v5, :cond_231

    .line 2210
    invoke-virtual {v0, v14}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedLevel(I)V

    .line 2211
    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setCapturedSizeForPrefetch(JJ)V

    .line 2212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 2214
    :cond_231
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Capture end for : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " done correctly? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_259
    :goto_259
    return-void
.end method
