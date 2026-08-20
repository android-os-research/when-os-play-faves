.class public final Lcom/android/server/am/Pageboost$PageboostAppInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostAppInfo"
.end annotation


# instance fields
.field public mAccExecTime:J

.field public mAnon:I

.field public mApkPath:Ljava/lang/String;

.field public mApkSize:I

.field public mCaptured:I

.field public mExecCnt:I

.field public mGPU:I

.field public mHitCnt:I

.field public mION:I

.field public mInstalled:I

.field public mIsGameApp:Z

.field public mMapCaptureSizeForPrefetch:J

.field public mName:Ljava/lang/String;

.field public mNameTrimmed:Ljava/lang/String;

.field public mPid:I

.field public mPrefetchCnt:I

.field public mProcStatus:I

.field public mProcStatusPid:I

.field public mScore:I

.field public mSizeForPrefetch:J

.field public mSizeForVramdisk:J

.field public mSkipNextEntry:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getSizeForVramdisk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$minitAalPrefetchList(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSizeForVramdisk(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const-string v16, ""

    .line 1183
    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 1184
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 1185
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 1186
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 1188
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    .line 1189
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 1190
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    const-wide/16 v2, 0x0

    .line 1191
    iput-wide v2, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 1192
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 1193
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 1194
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const-string v0, ""

    .line 1195
    iput-object v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1196
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isGameApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V
    .registers 25

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p14

    move/from16 v5, p15

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 1200
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 1201
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 1202
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 1203
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 1204
    iput-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const-string v6, "."

    const-string v7, ""

    .line 1205
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    move v6, p2

    .line 1206
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    move v6, p3

    .line 1207
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    move v6, p4

    .line 1208
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    move v6, p5

    .line 1209
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    move-wide v6, p6

    .line 1210
    iput-wide v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    move-wide/from16 v6, p8

    .line 1211
    iput-wide v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    const-wide/16 v6, 0x0

    .line 1212
    iput-wide v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    .line 1213
    iput v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 1214
    iput v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    move-wide/from16 v6, p12

    .line 1215
    iput-wide v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 1216
    iput v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 1217
    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    move-object/from16 v6, p16

    .line 1218
    iput-object v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1219
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isGameApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 1220
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appinfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public activeLaunch()Z
    .registers 2

    .line 1426
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/Pageboost$PreDo;->activeLaunch(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result p0

    return p0
.end method

.method public alive()Z
    .registers 2

    .line 1430
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public checkCmdlineByPid()Z
    .registers 6

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1388
    :try_start_19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_4a

    .line 1390
    :try_start_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v3, "[^\\p{Alnum}\\.]+"

    const/4 v4, 0x2

    .line 1392
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1393
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_40

    if-eqz p0, :cond_3c

    const/4 p0, 0x1

    move v1, p0

    .line 1397
    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4a

    goto :goto_53

    :catchall_40
    move-exception p0

    .line 1388
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v0

    :try_start_46
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_49
    throw p0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_4a

    .line 1398
    :catch_4a
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cmdline read failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return v1
.end method

.method public execute()Z
    .registers 2

    .line 1422
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/Pageboost$PreDo;->execute(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result p0

    return p0
.end method

.method public getApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1413
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCapturedLevel()I
    .registers 1

    .line 1282
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    return p0
.end method

.method public getGameApp()Z
    .registers 1

    .line 1264
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    return p0
.end method

.method public getIoinfo([J)V
    .registers 9

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ioinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1367
    :try_start_19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_4d

    move v0, v1

    .line 1369
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3f

    if-eqz v3, :cond_3b

    add-int/lit8 v4, v0, 0x1

    .line 1370
    :try_start_2c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, p1, v0

    .line 1371
    array-length v0, p1
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_39

    if-ne v4, v0, :cond_37

    move v0, v4

    goto :goto_3b

    :cond_37
    move v0, v4

    goto :goto_24

    :catchall_39
    move-exception v0

    goto :goto_42

    .line 1375
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4e

    goto :goto_58

    :catchall_3f
    move-exception v3

    move v4, v0

    move-object v0, v3

    .line 1367
    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v2

    :try_start_47
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4b

    :catch_4b
    move v0, v4

    goto :goto_4e

    :catch_4d
    move v0, v1

    .line 1376
    :catch_4e
    :goto_4e
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ioinfo read failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :goto_58
    array-length v2, p1

    if-ne v0, v2, :cond_61

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->checkCmdlineByPid()Z

    move-result p0

    if-nez p0, :cond_65

    :cond_61
    const-wide/16 v2, -0x1

    .line 1380
    aput-wide v2, p1, v1

    :cond_65
    return-void
.end method

.method public getMemUsage()Lcom/android/server/am/Pageboost$MemUsage;
    .registers 4

    .line 1274
    new-instance v0, Lcom/android/server/am/Pageboost$MemUsage;

    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/am/Pageboost$MemUsage;-><init>(III)V

    return-object v0
.end method

.method public getPid()I
    .registers 1

    .line 1356
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    return p0
.end method

.method public final getPreDo(I)Lcom/android/server/am/Pageboost$PreDo;
    .registers 2

    .line 1418
    new-instance p0, Lcom/android/server/am/Pageboost$IoPrefetch;

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$IoPrefetch;-><init>()V

    return-object p0
.end method

.method public final getSizeForVramdisk()J
    .registers 3

    .line 1299
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    return-wide v0
.end method

.method public getSkipNextEntry()Z
    .registers 1

    .line 1405
    iget-boolean p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSkipNextEntry:Z

    return p0
.end method

.method public final initAalPrefetchList()V
    .registers 20

    move-object/from16 v0, p0

    .line 1435
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_ACTIVE_LAUNCH_ENABLED()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 1439
    :cond_9
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    return-void

    .line 1445
    :cond_16
    :try_start_16
    iget-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1446
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_41

    .line 1449
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkpath seems not correct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1453
    :cond_41
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9f

    const/4 v4, 0x2

    const-string v5, "/oat/arm64/"

    const-string v6, "/oat/arm/"

    .line 1456
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    move v6, v3

    move v7, v6

    :goto_53
    if-ge v6, v4, :cond_9e

    .line 1459
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 1461
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_9b

    .line 1464
    array-length v7, v8

    move v9, v3

    :goto_79
    if-ge v9, v7, :cond_9a

    aget-object v10, v8, v9

    .line 1465
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_97

    .line 1466
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v12 .. v18}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    :cond_97
    add-int/lit8 v9, v9, 0x1

    goto :goto_79

    :cond_9a
    const/4 v7, 0x1

    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    :cond_9e
    move v3, v7

    :cond_9f
    if-nez v3, :cond_dd

    const-string v2, "/system/"

    .line 1475
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b1

    const-string v2, "/product/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1476
    :cond_b1
    invoke-static {v1}, Lcom/android/server/am/Pageboost$Vramdisk;->getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_dd

    .line 1478
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1479
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_d8} :catch_d9

    goto :goto_bb

    :catch_d9
    move-exception v0

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dd
    return-void
.end method

.method public isApkPathCorrect()Z
    .registers 4

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_23

    :cond_6
    const-string v2, "/data/"

    .line 1311
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string v2, "/system/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    const-string v0, "/product/"

    .line 1312
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    :goto_23
    return v1
.end method

.method public isFullyExecuted()Z
    .registers 2

    .line 1303
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isGameApp(Ljava/lang/String;)Z
    .registers 2

    .line 1251
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 1253
    :try_start_6
    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_e

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :catch_e
    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1330
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_30

    .line 1331
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reuse the dbinfo for this app info : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1335
    :cond_30
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset this app info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 1340
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app not in internal storage : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1345
    :cond_7d
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmFileDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    return-void
.end method

.method public setCapturedLevel(I)V
    .registers 2

    .line 1278
    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    return-void
.end method

.method public setCapturedSizeForPrefetch(JJ)V
    .registers 5

    .line 1286
    iput-wide p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 1287
    iput-wide p3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    return-void
.end method

.method public setMemUsage(Lcom/android/server/am/Pageboost$MemUsage;)V
    .registers 3

    .line 1268
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getAnon()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 1269
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getIONMem()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$MemUsage;->getGPUMem()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 1360
    iput p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    return-void
.end method

.method public final setSizeForVramdisk(J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v2, 0x1000

    .line 1295
    rem-long v4, p1, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_12

    div-long/2addr p1, v2

    mul-long/2addr p1, v2

    add-long/2addr p1, v2

    :cond_12
    iput-wide p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    return-void
.end method

.method public setSkipNextEntry(Z)V
    .registers 2

    .line 1409
    iput-boolean p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSkipNextEntry:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForVramdisk:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkSize:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    if-eqz v0, :cond_144

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v5, v0

    div-long/2addr v3, v5

    goto :goto_146

    :cond_144
    const-wide/16 v3, 0x0

    :goto_146
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateExecTime(I)V
    .registers 6

    .line 1351
    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 1352
    iget-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    return-void
.end method
