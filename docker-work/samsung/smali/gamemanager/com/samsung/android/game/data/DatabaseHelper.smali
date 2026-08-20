.class public Lcom/samsung/android/game/data/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"

.field private static mInstance:Lcom/samsung/android/game/data/DatabaseHelper;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/data/DatabaseHelper;->mInstance:Lcom/samsung/android/game/data/DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const-string v0, "gamemanager.db"

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method private getDb()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/game/data/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_a

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/data/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/game/data/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/game/data/DatabaseHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/samsung/android/game/data/DatabaseHelper;->mInstance:Lcom/samsung/android/game/data/DatabaseHelper;

    if-nez v0, :cond_12

    .line 30
    new-instance v0, Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/data/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/data/DatabaseHelper;->mInstance:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 31
    const-string v0, "DatabaseHelper"

    const-string v1, "create a DatabaseHelper"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_12
    sget-object v0, Lcom/samsung/android/game/data/DatabaseHelper;->mInstance:Lcom/samsung/android/game/data/DatabaseHelper;

    return-object v0
.end method

.method private removeGameFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userID"    # I

    .line 191
    const-string v0, "DELETE FROM game WHERE package_name=? AND user_id=?"

    .line 194
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 195
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    int-to-long v2, p3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 198
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 199
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 200
    return v2
.end method


# virtual methods
.method public addActionLog(Ljava/lang/String;Ljava/lang/String;)J
    .registers 22
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 349
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "_id"

    const-string v3, "log"

    const-wide/16 v4, -0x1

    .line 350
    .local v4, "result":J
    if-nez v2, :cond_d

    return-wide v4

    .line 352
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addActionLog(), tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DatabaseHelper"

    invoke-static {v7, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addActionLog(), msg: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 356
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 358
    .local v16, "cs":Landroid/database/Cursor;
    :try_start_41
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v8

    .line 359
    .local v15, "val":Landroid/content/ContentValues;
    const-string v8, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v8, "tag"

    invoke-virtual {v15, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v8, "msg"

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v14, 0x0

    invoke-virtual {v6, v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v4, v8

    .line 364
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_d5

    .line 365
    const-string v9, "log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const-string v18, "_id ASC"

    move-object v8, v6

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    .end local v15    # "val":Landroid/content/ContentValues;
    .local v17, "val":Landroid/content/ContentValues;
    move-object/from16 v15, v18

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_82
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_82} :catch_d8

    .line 369
    .end local v16    # "cs":Landroid/database/Cursor;
    .local v8, "cs":Landroid/database/Cursor;
    if-eqz v8, :cond_d2

    :try_start_84
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/16 v10, 0x1f4

    if-le v9, v10, :cond_d2

    .line 370
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 371
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 372
    .local v9, "id":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id=\'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\'"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v6, v3, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 373
    .local v0, "deleteResult":I
    if-eqz v0, :cond_d2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addActionLog(), delete log data to avoid overflow, id: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catch Landroid/database/SQLException; {:try_start_84 .. :try_end_cd} :catch_ce

    goto :goto_d2

    .line 377
    .end local v0    # "deleteResult":I
    .end local v9    # "id":J
    .end local v17    # "val":Landroid/content/ContentValues;
    :catch_ce
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_d9

    .line 379
    :cond_d2
    :goto_d2
    move-object/from16 v16, v8

    goto :goto_d7

    .line 364
    .end local v8    # "cs":Landroid/database/Cursor;
    .restart local v15    # "val":Landroid/content/ContentValues;
    .restart local v16    # "cs":Landroid/database/Cursor;
    :cond_d5
    move-object/from16 v17, v15

    .line 379
    .end local v15    # "val":Landroid/content/ContentValues;
    :goto_d7
    goto :goto_dc

    .line 377
    :catch_d8
    move-exception v0

    .line 378
    .local v0, "e":Landroid/database/SQLException;
    :goto_d9
    invoke-static {v7, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addActionLog(), ret: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-eqz v16, :cond_f7

    .line 383
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_f7
    return-wide v4
.end method

.method public addActionLogs(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msgList"    # [Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 339
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 341
    array-length v1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, p2, v2

    .line 342
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/game/data/DatabaseHelper;->addActionLog(Ljava/lang/String;Ljava/lang/String;)J

    .line 341
    .end local v3    # "msg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 344
    :cond_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 345
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 346
    return-void
.end method

.method public checkIfUserAlreadyPresent(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 163
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 165
    .local v9, "cs":Landroid/database/Cursor;
    const/4 v10, 0x0

    :try_start_6
    const-string v3, "package_name=? AND user_id=?"

    .line 166
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    aput-object v0, v4, v11

    .line 167
    .local v4, "sectArgs":[Ljava/lang/String;
    const-string v1, "game"

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 168
    if-eqz v9, :cond_31

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    .line 169
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_30} :catch_32

    .line 170
    return v11

    .line 174
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "sectArgs":[Ljava/lang/String;
    :cond_31
    goto :goto_38

    .line 172
    :catch_32
    move-exception v0

    .line 173
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_38
    if-eqz v9, :cond_3d

    .line 177
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_3d
    return v10
.end method

.method public dumpAllActionLogs()Ljava/lang/String;
    .registers 13

    .line 390
    const-string v0, "DatabaseHelper"

    const-string v1, "getAllActionLog()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 393
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 395
    .local v11, "cs":Landroid/database/Cursor;
    :try_start_11
    const-string v3, "log"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v11, v2

    .line 396
    if-eqz v11, :cond_6d

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 398
    :cond_27
    const-string v2, "time"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 399
    .local v2, "time":J
    invoke-static {v2, v3}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tag"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msg"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    nop

    .end local v2    # "time":J
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_6b
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_6b} :catch_6e

    if-nez v2, :cond_27

    .line 407
    :cond_6d
    goto :goto_72

    .line 405
    :catch_6e
    move-exception v2

    .line 406
    .local v2, "e":Landroid/database/SQLException;
    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_72
    if-eqz v11, :cond_77

    .line 409
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/samsung/android/game/data/DatabaseHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 420
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 421
    return-void
.end method

.method public loadPkgDataFromDb(I)V
    .registers 12
    .param p1, "userID"    # I

    .line 89
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    .line 90
    .local v0, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 91
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "game"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 92
    .local v1, "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 94
    :cond_1d
    new-instance v2, Lcom/samsung/android/game/PkgData;

    .line 95
    const-string v3, "package_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "category"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/game/PkgData;-><init>(Ljava/lang/String;I)V

    .line 97
    .local v2, "pkgData":Lcom/samsung/android/game/PkgData;
    const-string v3, "user_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/PkgData;->setUserID(I)V

    .line 99
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v2}, Lcom/samsung/android/game/PkgDataHelper;->putPkgData(Ljava/lang/String;ILcom/samsung/android/game/PkgData;)V

    .line 100
    .end local v2    # "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_53
    if-eqz v1, :cond_58

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPkgDataFromDb(). entry size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/game/PkgDataHelper;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DatabaseHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    const-string v0, "DatabaseHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "CREATE TABLE game (_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name TEXT, category TEXT, user_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE TABLE log (_id INTEGER PRIMARY KEY AUTOINCREMENT, time INTEGER, tag TEXT, msg TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngrade(), from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "DROP TABLE IF EXISTS game"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "DROP TABLE IF EXISTS log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade. from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "DROP TABLE IF EXISTS game"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP TABLE IF EXISTS log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public refreshGameList(Ljava/util/Map;I)V
    .registers 15
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "userID"    # I

    .line 220
    move-object v0, p1

    .line 224
    .local v0, "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 226
    const-string v1, "DatabaseHelper"

    if-nez v0, :cond_c

    .line 227
    const-string v2, "refreshGameList(), pkgMap is null"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 231
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 232
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    .line 235
    .local v3, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Lcom/samsung/android/game/PkgDataHelper;->getPkgNameSet(I)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v4, "remainedGameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ", userID: "

    if-eqz v6, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 238
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 239
    .local v8, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 240
    .local v9, "categoryFromMap":Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refreshGameList(), pkgName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", category: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, v8, p2}, Lcom/samsung/android/game/PkgDataHelper;->preparePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v7

    .line 243
    .local v7, "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-virtual {v7}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v10

    .line 244
    .local v10, "prevCategory":I
    const/4 v11, -0x1

    .line 246
    .local v11, "newCategory":I
    if-eqz v9, :cond_79

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 247
    :cond_79
    if-eq v10, v11, :cond_81

    .line 248
    invoke-virtual {v7, v11}, Lcom/samsung/android/game/PkgData;->setCategory(I)V

    .line 249
    invoke-virtual {p0, v8, v7, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->updateOrAddPkg(Ljava/lang/String;Lcom/samsung/android/game/PkgData;I)I

    .line 251
    :cond_81
    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 252
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "categoryFromMap":Ljava/lang/Integer;
    .end local v10    # "prevCategory":I
    .end local v11    # "newCategory":I
    goto :goto_28

    .line 253
    :cond_85
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_cb

    .line 254
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 256
    .local v6, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v2, v6, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->removeGameFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v8

    .line 257
    .local v8, "result":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshGameList(), delete pkgName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ret: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3, v6, p2}, Lcom/samsung/android/game/PkgDataHelper;->removePkgData(Ljava/lang/String;I)V

    .line 260
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v8    # "result":I
    goto :goto_8f

    .line 262
    :cond_cb
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 263
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    return-void
.end method

.method public removeGame(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .line 183
    if-eqz p1, :cond_36

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 185
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->removeGameFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGame(), packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DatabaseHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "result":I
    :cond_36
    return-void
.end method

.method public removeUser(I)V
    .registers 8
    .param p1, "userID"    # I

    .line 204
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3b

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM game WHERE user_id=?"

    .line 208
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 209
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 211
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v3

    .line 212
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeUser(), ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DatabaseHelper"

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .end local v3    # "result":I
    :cond_3b
    return-void
.end method

.method public syncGameList(Ljava/util/Map;)V
    .registers 21
    .param p1, "object"    # Ljava/util/Map;

    .line 269
    move-object/from16 v1, p0

    const-string v2, "DatabaseHelper"

    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_13f

    .line 273
    .local v0, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    nop

    .line 275
    if-nez v0, :cond_11

    .line 276
    const-string v3, "syncGameList(), pkgMap is null"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 280
    :cond_11
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    .line 281
    .local v3, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgDataHelper;->getPkgNameUserIdMap()Ljava/util/HashMap;

    move-result-object v4

    .line 283
    .local v4, "remainedGameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 284
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 285
    .local v7, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 286
    .local v8, "categoryAndUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 288
    .local v9, "categoryFromMap":Ljava/lang/Integer;
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c8

    .line 289
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 290
    .local v11, "pkgMapUserId":I
    invoke-virtual {v3, v7, v11}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v12

    .line 291
    .local v12, "pkgData":Lcom/samsung/android/game/PkgData;
    if-nez v12, :cond_60

    .line 292
    new-instance v13, Lcom/samsung/android/game/PkgData;

    invoke-direct {v13, v7}, Lcom/samsung/android/game/PkgData;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    .line 293
    invoke-virtual {v12, v11}, Lcom/samsung/android/game/PkgData;->setUserID(I)V

    .line 295
    :cond_60
    invoke-virtual {v12}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v13

    .line 296
    .local v13, "prevCategory":I
    const/4 v14, -0x1

    .line 298
    .local v14, "newCategory":I
    if-eqz v9, :cond_6b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 299
    :cond_6b
    if-eq v13, v14, :cond_73

    .line 300
    invoke-virtual {v12, v14}, Lcom/samsung/android/game/PkgData;->setCategory(I)V

    .line 301
    invoke-virtual {v1, v7, v12, v11}, Lcom/samsung/android/game/data/DatabaseHelper;->updateOrAddPkg(Ljava/lang/String;Lcom/samsung/android/game/PkgData;I)I

    .line 304
    :cond_73
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    .line 305
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_7a
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    move-object/from16 v17, v0

    .end local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v17, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_af

    .line 306
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    .local v0, "remainedGameMapUserId":I
    if-ne v0, v11, :cond_a8

    .line 308
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v0

    .end local v0    # "remainedGameMapUserId":I
    .local v18, "remainedGameMapUserId":I
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    goto :goto_af

    .line 307
    .end local v18    # "remainedGameMapUserId":I
    .restart local v0    # "remainedGameMapUserId":I
    :cond_a8
    move/from16 v18, v0

    .line 305
    .end local v0    # "remainedGameMapUserId":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    goto :goto_7a

    .line 313
    .end local v15    # "j":I
    :cond_af
    :goto_af
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    if-ge v0, v15, :cond_c2

    .line 314
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 304
    .end local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v0, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_c0
    move-object/from16 v17, v0

    .line 288
    .end local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v11    # "pkgMapUserId":I
    .end local v12    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v13    # "prevCategory":I
    .end local v14    # "newCategory":I
    .restart local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_c2
    :goto_c2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_41

    .end local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_c8
    move-object/from16 v17, v0

    .line 318
    .end local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "categoryAndUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "categoryFromMap":Ljava/lang/Integer;
    .end local v10    # "i":I
    .restart local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    goto/16 :goto_21

    .line 320
    .end local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_cc
    move-object/from16 v17, v0

    .end local v0    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .restart local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 324
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 325
    .restart local v7    # "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 326
    .local v8, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_13d

    .line 327
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 328
    .local v10, "currentUserId":I
    invoke-direct {v1, v0, v7, v10}, Lcom/samsung/android/game/data/DatabaseHelper;->removeGameFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v11

    .line 329
    .local v11, "result":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syncGameList(), delete pkgName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", currentUserId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ret: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3, v7, v10}, Lcom/samsung/android/game/PkgDataHelper;->removePkgData(Ljava/lang/String;I)V

    .line 326
    .end local v10    # "currentUserId":I
    .end local v11    # "result":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_f9

    .line 333
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    :cond_13d
    goto :goto_e0

    .line 335
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_13e
    return-void

    .line 270
    .end local v3    # "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    .end local v4    # "remainedGameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v17    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catch_13f
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 271
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method

.method public updateOrAddPkg(Ljava/lang/String;Lcom/samsung/android/game/PkgData;I)I
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgData"    # Lcom/samsung/android/game/PkgData;
    .param p3, "userID"    # I

    .line 112
    move-object/from16 v1, p1

    move/from16 v2, p3

    if-eqz v1, :cond_b4

    if-nez p2, :cond_c

    move-object/from16 v4, p0

    goto/16 :goto_b6

    .line 113
    :cond_c
    const/4 v0, 0x0

    .line 115
    .local v0, "alreadyExists":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/game/data/DatabaseHelper;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 118
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v4, p0

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/game/data/DatabaseHelper;->checkIfUserAlreadyPresent(Ljava/lang/String;I)Z

    move-result v5

    .line 120
    .end local v0    # "alreadyExists":Z
    .local v5, "alreadyExists":Z
    const/4 v6, -0x1

    .line 121
    .local v6, "ret":I
    const-string v7, ", result: "

    const-string v8, ", userID: "

    const/4 v0, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "DatabaseHelper"

    if-eqz v5, :cond_6a

    .line 122
    const-string v12, "UPDATE game SET category=? WHERE package_name=? AND user_id=?"

    .line 126
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 127
    .local v13, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {v13, v9, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 129
    int-to-long v9, v2

    invoke-virtual {v13, v0, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    :try_start_38
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 135
    goto :goto_42

    .line 133
    :catch_3c
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 134
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v11, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_42
    const/4 v0, 0x2

    .line 137
    .end local v6    # "ret":I
    .local v0, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateOrAddPkg(), update packageName: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v12    # "s":Ljava/lang/String;
    goto :goto_b0

    .line 139
    .end local v0    # "ret":I
    .end local v13    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v6    # "ret":I
    :cond_6a
    const-string v12, "INSERT INTO game(package_name, category, user_id) VALUES (?, ?, ?)"

    .line 144
    .restart local v12    # "s":Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 146
    .restart local v13    # "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v13, v10, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v10

    int-to-long v14, v10

    invoke-virtual {v13, v9, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    int-to-long v9, v2

    invoke-virtual {v13, v0, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    :try_start_7f
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_82
    .catch Landroid/database/SQLException; {:try_start_7f .. :try_end_82} :catch_83

    .line 153
    goto :goto_89

    .line 151
    :catch_83
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 152
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v11, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_89
    const/4 v0, 0x1

    .line 155
    .end local v6    # "ret":I
    .local v0, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateOrAddPkg(), insert packageName:  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v12    # "s":Ljava/lang/String;
    :goto_b0
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 158
    return v0

    .line 112
    .end local v0    # "ret":I
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "alreadyExists":Z
    .end local v13    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_b4
    move-object/from16 v4, p0

    :goto_b6
    const/4 v0, -0x1

    return v0
.end method
