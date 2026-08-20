.class public final Lcom/android/server/am/Pageboost$FileMapInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMapInfo"
.end annotation


# static fields
.field public static final mNodeName:Ljava/lang/String; = "filemap_info"


# instance fields
.field public mCorrectness:Z

.field public mPid:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetFileMapInfo(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/Pageboost$FileMapInfo;->getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 1593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1590
    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    .line 1591
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-gtz p1, :cond_b

    return-void

    .line 1597
    :cond_b
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    const/4 p1, 0x1

    .line 1598
    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return-void
.end method


# virtual methods
.method public final getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)[J
    .registers 25

    move-object/from16 v0, p0

    .line 1607
    iget-boolean v1, v0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1611
    :cond_8
    iget v0, v0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "filemap_info"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1614
    :try_start_2e
    new-instance v6, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_da

    move-object/from16 v7, p1

    .line 1615
    :try_start_3a
    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-array v8, v4, [Ljava/lang/String;

    .line 1618
    invoke-static {v0, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    if-eqz p2, :cond_4d

    .line 1620
    array-length v8, v0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_cb

    int-to-long v8, v8

    move-wide v15, v8

    goto :goto_4e

    :cond_4d
    move-wide v15, v2

    :goto_4e
    move v8, v4

    move v9, v8

    .line 1622
    :goto_50
    :try_start_50
    array-length v10, v0

    if-ge v8, v10, :cond_c4

    .line 1623
    aget-byte v10, v0, v8

    const/16 v11, 0xa

    if-ne v10, v11, :cond_c2

    .line 1624
    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 1625
    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v9, " "

    .line 1626
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1627
    array-length v10, v9

    if-ne v10, v1, :cond_b7

    .line 1628
    aget-object v10, v9, v4

    const-string/jumbo v11, "mapped"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_85

    .line 1629
    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x1000

    mul-long/2addr v9, v11

    add-long/2addr v2, v9

    add-int/lit8 v9, v8, 0x1

    goto :goto_c2

    .line 1633
    :cond_85
    aget-object v10, v9, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1634
    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v13

    add-int/lit8 v14, v8, 0x1

    .line 1635
    invoke-static {v0, v9, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    add-int/lit8 v17, v14, 0x1

    if-eqz p2, :cond_b0

    .line 1641
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move/from16 v19, v14

    move/from16 v14, v18

    invoke-static/range {v8 .. v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_b2

    :cond_b0
    move/from16 v19, v14

    :goto_b2
    move/from16 v9, v17

    move/from16 v8, v19

    goto :goto_c2

    .line 1645
    :cond_b7
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "unknown error during parsing of filemap_info"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_50 .. :try_end_c1} :catchall_c8

    goto :goto_c4

    :cond_c2
    :goto_c2
    add-int/2addr v8, v5

    goto :goto_50

    .line 1650
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_d8

    goto :goto_df

    :catchall_c8
    move-exception v0

    move-object v7, v0

    goto :goto_ce

    :catchall_cb
    move-exception v0

    move-object v7, v0

    move-wide v15, v2

    .line 1614
    :goto_ce
    :try_start_ce
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_d7

    :catchall_d2
    move-exception v0

    move-object v6, v0

    :try_start_d4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d7
    throw v7
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d8} :catch_d8

    :catch_d8
    move-exception v0

    goto :goto_dc

    :catch_da
    move-exception v0

    move-wide v15, v2

    .line 1651
    :goto_dc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_df
    new-array v0, v1, [J

    aput-wide v2, v0, v4

    aput-wide v15, v0, v5

    return-object v0
.end method

.method public isCorrect()Z
    .registers 1

    .line 1658
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return p0
.end method
