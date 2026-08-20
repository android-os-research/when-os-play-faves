.class public final Lcom/android/server/am/Pageboost$IoRecord;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoRecord"
.end annotation


# static fields
.field public static final MAX_RECORD_SIZE:J = 0x19000000L

.field public static final RESULT_BUF_END_MAGIC:I = -0x1

.field public static final mNodeName:Ljava/lang/String; = "io_record_control"


# instance fields
.field public is64bit:Z

.field public mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

.field public mBytesRecorded:J

.field public mCorrectness:Z

.field public mPid:I

.field public mPkg:Ljava/lang/String;

.field public mRecordDone:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRecordDone(Lcom/android/server/am/Pageboost$IoRecord;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V
    .registers 6

    .line 1675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1666
    iput v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    const-wide/16 v1, 0x0

    .line 1670
    iput-wide v1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 1671
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 1672
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    if-gtz p2, :cond_11

    return-void

    .line 1680
    :cond_11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1683
    iput p2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 1684
    iget-object p2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPkg:Ljava/lang/String;

    .line 1685
    iput-object p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 1687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "/proc/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "io_record_control"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2"

    invoke-static {p1, p2}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    if-eqz p1, :cond_68

    .line 1689
    iget p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->check64Bit(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    .line 1690
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IoRecord pid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", started correctly"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void
.end method

.method public static createBitmap(I)[B
    .registers 1

    add-int/lit8 p0, p0, 0x7

    .line 1746
    div-int/lit8 p0, p0, 0x8

    .line 1747
    new-array p0, p0, [B

    return-object p0
.end method

.method public static emergencyReset()V
    .registers 2

    const-string v0, "/proc/self/io_record_control"

    const-string v1, "1"

    .line 1695
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static fillBitmap([BIIZ)V
    .registers 10

    .line 1756
    rem-int/lit8 v0, p1, 0x8

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_24

    .line 1757
    div-int/lit8 p1, p1, 0x8

    aget-byte v4, p0, p1

    and-int/2addr v4, v1

    :goto_e
    if-ge v0, v3, :cond_1d

    if-eqz p3, :cond_16

    shl-int v5, v2, v0

    or-int/2addr v4, v5

    goto :goto_1a

    :cond_16
    shl-int v5, v2, v0

    not-int v5, v5

    and-int/2addr v4, v5

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    and-int/lit16 v0, v4, 0xff

    int-to-byte v0, v0

    .line 1765
    aput-byte v0, p0, p1

    add-int/2addr p1, v2

    mul-int/2addr p1, v3

    .line 1770
    :cond_24
    div-int/2addr p1, v3

    .line 1771
    div-int/lit8 v0, p2, 0x8

    const/4 v4, 0x0

    if-ge p1, v0, :cond_33

    if-eqz p3, :cond_2e

    move v5, v1

    goto :goto_2f

    :cond_2e
    move v5, v4

    :goto_2f
    int-to-byte v5, v5

    .line 1778
    invoke-static {p0, p1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1782
    :cond_33
    rem-int/2addr p2, v3

    if-eqz p2, :cond_4c

    .line 1783
    aget-byte p1, p0, v0

    and-int/2addr p1, v1

    :goto_39
    if-ge v4, p2, :cond_48

    if-eqz p3, :cond_41

    shl-int v3, v2, v4

    or-int/2addr p1, v3

    goto :goto_45

    :cond_41
    shl-int v3, v2, v4

    not-int v3, v3

    and-int/2addr p1, v3

    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_48
    and-int/2addr p1, v1

    int-to-byte p1, p1

    .line 1791
    aput-byte p1, p0, v0

    :cond_4c
    return-void
.end method

.method public static readInt([B)I
    .registers 3

    const/4 v0, 0x3

    .line 1715
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    .line 1716
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 1717
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1718
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static resizeBitmap([BIIIII)[B
    .registers 10

    add-int v0, p1, p2

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, 0x7

    .line 1729
    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    int-to-long v2, p5

    cmp-long p5, v0, v2

    if-gtz p5, :cond_22

    add-int/2addr p4, p3

    sub-int/2addr p4, p1

    .line 1734
    invoke-static {p4}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object p5

    .line 1736
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p1

    .line 1738
    invoke-static {p5, p2, p3, v1}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    const/4 p0, 0x1

    .line 1740
    invoke-static {p5, p3, p4, p0}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    goto :goto_23

    :cond_22
    const/4 p5, 0x0

    :goto_23
    return-object p5
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1699
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1f

    .line 1700
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    .line 1702
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_1f

    const/4 p0, 0x1

    return p0

    :catchall_15
    move-exception p0

    .line 1699
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    :try_start_1b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 1703
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getApp()Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .registers 1

    .line 1710
    iget-object p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    return-object p0
.end method

.method public getResultFromKernel()J
    .registers 9

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    return-wide v1

    .line 1919
    :cond_9
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IoRecord pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "io_record_control"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "3"

    .line 1923
    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1924
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StopRecording Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_53
    const-string v3, "4"

    .line 1929
    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 1930
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PostRecording Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_65
    const/4 v3, 0x0

    :try_start_66
    new-array v5, v3, [Ljava/lang/String;

    .line 1936
    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v5

    .line 1937
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result_size : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-virtual {p0, v5}, Lcom/android/server/am/Pageboost$IoRecord;->parsingResult([B)J

    move-result-wide v4
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_95} :catch_b6

    const-string v6, "1"

    .line 1945
    invoke-static {v0, v6}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1946
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "iorecord re-init Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_a8
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v6, 0x1

    if-ltz v0, :cond_b0

    move v3, v6

    :cond_b0
    if-eqz v3, :cond_b5

    .line 1956
    iput-boolean v6, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    return-wide v4

    :cond_b5
    return-wide v1

    .line 1940
    :catch_b6
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CatRecordedData Failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public isCorrect()Z
    .registers 1

    .line 1963
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    return p0
.end method

.method public final parsingResult([B)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/Pageboost$IoRecord;->isCorrect()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    .line 1809
    :cond_d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1810
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    .line 1812
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "db table failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 1816
    :cond_30
    iget-object v3, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-static {v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$minitAalPrefetchList(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 1818
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "db insert start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    move v13, v6

    .line 1819
    :goto_43
    array-length v7, v1

    if-ge v6, v7, :cond_126

    add-int/lit8 v7, v6, 0x4

    .line 1825
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1826
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v12

    const/4 v11, -0x1

    if-ne v12, v11, :cond_55

    goto/16 :goto_126

    :cond_55
    add-int v6, v7, v12

    .line 1833
    invoke-static {v1, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 1834
    new-instance v10, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1837
    iget-object v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v7, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const/16 v20, 0x0

    if-eqz v7, :cond_74

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    const/4 v7, 0x2

    move/from16 v21, v7

    goto :goto_76

    :cond_74
    move/from16 v21, v3

    :goto_76
    move v9, v11

    move/from16 v16, v9

    move-object/from16 v15, v20

    :goto_7b
    add-int/lit8 v7, v6, 0x4

    .line 1846
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1847
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v8

    add-int/lit8 v14, v7, 0x4

    .line 1849
    invoke-static {v1, v7, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 1850
    invoke-static {v6}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    move-result v7

    if-ne v8, v11, :cond_94

    if-ne v7, v11, :cond_94

    goto :goto_af

    .line 1859
    :cond_94
    iget-boolean v6, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    invoke-static {v10, v6}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingTarget(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9e

    move v6, v14

    goto :goto_7b

    :cond_9e
    const-wide/16 v17, 0x1000

    move/from16 v22, v12

    int-to-long v11, v7

    mul-long v11, v11, v17

    add-long v23, v4, v11

    const-wide/32 v11, 0x19000000

    cmp-long v6, v23, v11

    if-lez v6, :cond_c5

    const/4 v13, 0x1

    :goto_af
    if-eqz v15, :cond_be

    .line 1893
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    array-length v11, v15

    move-object v7, v2

    move-object v8, v10

    move-object v10, v15

    move/from16 v12, v21

    invoke-static/range {v6 .. v12}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    :cond_be
    if-eqz v13, :cond_c2

    goto/16 :goto_126

    :cond_c2
    move v6, v14

    goto/16 :goto_43

    :cond_c5
    move v4, v14

    if-eqz v15, :cond_d6

    move-object v14, v15

    move-object v5, v15

    move v15, v9

    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v19, v22

    .line 1871
    invoke-static/range {v14 .. v19}, Lcom/android/server/am/Pageboost$IoRecord;->resizeBitmap([BIIIII)[B

    move-result-object v6

    goto :goto_d9

    :cond_d6
    move-object v5, v15

    move-object/from16 v6, v20

    :goto_d9
    if-nez v6, :cond_10c

    if-eqz v5, :cond_f5

    .line 1878
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    array-length v11, v5

    const/4 v14, 0x1

    move v15, v7

    move-object v7, v2

    move/from16 v16, v8

    move-object v8, v10

    move-object/from16 v17, v10

    move-object v10, v5

    const/16 v18, -0x1

    move/from16 v19, v22

    move/from16 v12, v21

    invoke-static/range {v6 .. v12}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_ff

    :cond_f5
    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v10

    move/from16 v19, v22

    const/4 v14, 0x1

    const/16 v18, -0x1

    .line 1882
    :goto_ff
    invoke-static {v15}, Lcom/android/server/am/Pageboost$IoRecord;->createBitmap(I)[B

    move-result-object v5

    .line 1883
    invoke-static {v5, v3, v15, v14}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap([BIIZ)V

    move/from16 v9, v16

    move/from16 v16, v15

    move-object v15, v5

    goto :goto_11b

    :cond_10c
    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v10

    move/from16 v19, v22

    const/16 v18, -0x1

    add-int v8, v16, v15

    sub-int/2addr v8, v9

    move-object v15, v6

    move/from16 v16, v8

    :goto_11b
    move v6, v4

    move-object/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-wide/from16 v4, v23

    goto/16 :goto_7b

    .line 1900
    :cond_126
    :goto_126
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db insert done, overLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iput-wide v4, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    return-wide v4
.end method
