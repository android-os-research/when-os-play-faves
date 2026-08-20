.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field public static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "ApplicationUsageDb"

    :try_start_2
    const-string v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "::createDmAppMgrTable: Table is Created "

    .line 379
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    move-exception p0

    const-string v1, "::createDmAppMgrTable: Exception while table is creating "

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    const-string v0, "dmappmgr.db"

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    const/4 v2, 0x0

    .line 355
    :try_start_6
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception p0

    const-string v0, "ApplicationUsageDb"

    const-string v2, "::getAppControlDB: Exception to create DB"

    .line 358
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    if-eqz v1, :cond_23

    const-string p0, "ApplicationControl"

    .line 361
    invoke-static {v1, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 362
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_23
    return-object v1
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 390
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE 1=0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2a

    const/4 v0, 0x1

    goto :goto_31

    :catch_2a
    const-string p0, "ApplicationUsageDb"

    const-string p1, "::isTableExists:Table Does not exists "

    .line 394
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return v0
.end method


# virtual methods
.method public final calculateLastUsageTime(JJJJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long p0, p5, v0

    if-eqz p0, :cond_24

    cmp-long p0, p7, v0

    if-eqz p0, :cond_24

    cmp-long p0, p1, v0

    if-eqz p0, :cond_21

    cmp-long p0, p3, p7

    if-lez p0, :cond_1a

    cmp-long p0, p1, p5

    if-gez p0, :cond_17

    goto :goto_28

    :cond_17
    sub-long v0, p3, p5

    goto :goto_2a

    :cond_1a
    cmp-long p0, p1, p5

    if-gez p0, :cond_21

    sub-long v0, p7, p1

    goto :goto_2a

    :cond_21
    sub-long v0, p7, p5

    goto :goto_2a

    :cond_24
    cmp-long p0, p3, v0

    if-eqz p0, :cond_2a

    :goto_28
    sub-long v0, p3, p1

    :cond_2a
    :goto_2a
    return-wide v0
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_30

    if-nez p0, :cond_b

    return v1

    :cond_b
    :try_start_b
    const-string v2, "ApplicationControl"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgname = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_2d

    if-lez p1, :cond_35

    const/4 p1, 0x1

    move v1, p1

    goto :goto_35

    :catch_2d
    move-exception p1

    move-object v0, p0

    goto :goto_31

    :catch_30
    move-exception p1

    .line 187
    :goto_31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :cond_35
    :goto_35
    if-eqz p0, :cond_3a

    .line 191
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3a
    return v1
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/application/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pkgname"

    const-string/jumbo v1, "lastlaunchtime"

    const-string/jumbo v2, "lastpausetime"

    const-string v3, "applastservicestarttime"

    const-string v4, "applastservicestoptime"

    .line 241
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    move-object/from16 v15, p0

    .line 247
    :try_start_14
    iget-object v5, v15, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_af
    .catchall {:try_start_14 .. :try_end_1a} :catchall_ab

    if-nez v23, :cond_22

    if-eqz v23, :cond_21

    .line 292
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_21
    return-object v13

    :cond_22
    :try_start_22
    const-string v6, "ApplicationControl"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, v23

    .line 250
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_a8
    .catchall {:try_start_22 .. :try_end_2f} :catchall_c2

    if-eqz v5, :cond_9f

    .line 253
    :try_start_31
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 254
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_9b
    .catchall {:try_start_31 .. :try_end_3c} :catchall_98

    .line 258
    :goto_3c
    :try_start_3c
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 257
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 259
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 262
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 261
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 264
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 263
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 266
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 265
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object/from16 v14, p0

    move-wide v15, v8

    move-wide/from16 v19, v10

    .line 267
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_74

    goto :goto_8b

    .line 273
    :cond_74
    new-instance v14, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v14}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    .line 274
    iput-object v7, v14, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 275
    iput-wide v12, v14, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-eqz v12, :cond_86

    .line 277
    iput-wide v8, v14, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    goto :goto_88

    .line 279
    :cond_86
    iput-wide v10, v14, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    .line 280
    :goto_88
    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_8b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_8f} :catch_96
    .catchall {:try_start_3c .. :try_end_8f} :catchall_98

    if-nez v7, :cond_93

    move-object v13, v6

    goto :goto_9f

    :cond_93
    move-object/from16 v15, p0

    goto :goto_3c

    :catch_96
    move-exception v0

    goto :goto_9d

    :catchall_98
    move-exception v0

    move-object v13, v5

    goto :goto_c3

    :catch_9b
    move-exception v0

    move-object v6, v13

    :goto_9d
    move-object v13, v5

    goto :goto_b3

    :cond_9f
    :goto_9f
    if-eqz v5, :cond_a4

    .line 290
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_a4
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c1

    :catch_a8
    move-exception v0

    move-object v6, v13

    goto :goto_b3

    :catchall_ab
    move-exception v0

    move-object/from16 v23, v13

    goto :goto_c3

    :catch_af
    move-exception v0

    move-object v6, v13

    move-object/from16 v23, v6

    .line 286
    :goto_b3
    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c2

    if-eqz v13, :cond_bb

    .line 290
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_bb
    if-eqz v23, :cond_c0

    .line 292
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c0
    move-object v13, v6

    :goto_c1
    return-object v13

    :catchall_c2
    move-exception v0

    :goto_c3
    if-eqz v13, :cond_c8

    .line 290
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c8
    if-eqz v23, :cond_cd

    .line 292
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 294
    :cond_cd
    throw v0
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 203
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_6c
    .catchall {:try_start_1 .. :try_end_7} :catchall_67

    if-eqz p0, :cond_5b

    :try_start_9
    const-string v2, "ApplicationControl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 205
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_56
    .catchall {:try_start_9 .. :try_end_16} :catchall_51

    if-eqz v1, :cond_4e

    .line 208
    :try_start_18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_49
    .catchall {:try_start_18 .. :try_end_1d} :catchall_7d

    .line 210
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_23
    const-string/jumbo v0, "pkgname"

    .line 213
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 212
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "launchcount"

    .line 216
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 215
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_44} :catch_47
    .catchall {:try_start_1d .. :try_end_44} :catchall_7d

    if-nez v0, :cond_23

    goto :goto_4f

    :catch_47
    move-exception v0

    goto :goto_71

    :catch_49
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_71

    :cond_4e
    move-object v2, v0

    :cond_4f
    :goto_4f
    move-object v0, v1

    goto :goto_5c

    :catchall_51
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_7e

    :catch_56
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_71

    :cond_5b
    move-object v2, v0

    :goto_5c
    if-eqz v0, :cond_61

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_61
    if-eqz p0, :cond_7c

    .line 229
    :goto_63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7c

    :catchall_67
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_7e

    :catch_6c
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v0, p0

    move-object p0, v2

    .line 223
    :goto_71
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7d

    if-eqz v1, :cond_79

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    if-eqz p0, :cond_7c

    goto :goto_63

    :cond_7c
    :goto_7c
    return-object v2

    :catchall_7d
    move-exception v0

    :goto_7e
    if-eqz v1, :cond_83

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_83
    if-eqz p0, :cond_88

    .line 229
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    :cond_88
    throw v0
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 15

    const-string v0, "\'"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_94
    .catchall {:try_start_4 .. :try_end_a} :catchall_92

    if-nez p0, :cond_d

    return v1

    .line 137
    :cond_d
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_90
    .catchall {:try_start_d .. :try_end_25} :catchall_92

    .line 142
    :try_start_25
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_8d
    .catchall {:try_start_25 .. :try_end_29} :catchall_8a

    const/4 v5, 0x1

    const-string v6, "ApplicationControl"

    const-string v7, "applastservicestoptime"

    const-string v8, "applastservicestarttime"

    if-eqz v4, :cond_62

    .line 144
    :try_start_32
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "pkgname = \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_86

    :goto_60
    move v1, v5

    goto :goto_86

    .line 152
    :cond_62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "pkgname"

    .line 153
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    invoke-virtual {p0, v6, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_7f} :catch_8d
    .catchall {:try_start_32 .. :try_end_7f} :catchall_8a

    const-wide/16 p3, 0x0

    cmp-long p1, p3, p1

    if-gez p1, :cond_86

    goto :goto_60

    .line 165
    :cond_86
    :goto_86
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_9e

    :catchall_8a
    move-exception p0

    move-object v2, v3

    goto :goto_a4

    :catch_8d
    move-exception p1

    move-object v2, v3

    goto :goto_96

    :catch_90
    move-exception p1

    goto :goto_96

    :catchall_92
    move-exception p0

    goto :goto_a4

    :catch_94
    move-exception p1

    move-object p0, v2

    .line 162
    :goto_96
    :try_start_96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_92

    if-eqz v2, :cond_9e

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9e
    :goto_9e
    if-eqz p0, :cond_a3

    .line 168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a3
    return v1

    :goto_a4
    if-eqz v2, :cond_a9

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_a9
    throw p0
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 20

    move-object v0, p1

    const-string v1, "\'"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    .line 82
    :try_start_6
    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_b2
    .catchall {:try_start_6 .. :try_end_c} :catchall_b0

    if-nez v4, :cond_f

    return v2

    .line 85
    :cond_f
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_ae
    .catchall {:try_start_f .. :try_end_27} :catchall_b0

    .line 90
    :try_start_27
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_ab
    .catchall {:try_start_27 .. :try_end_2b} :catchall_a8

    const/4 v7, 0x1

    const-string v8, "ApplicationControl"

    const-string/jumbo v9, "lastpausetime"

    const-string/jumbo v10, "lastlaunchtime"

    const-string/jumbo v11, "launchcount"

    if-eqz v6, :cond_79

    .line 93
    :try_start_39
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 92
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/2addr v6, p2

    .line 95
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v12, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a4

    :goto_77
    move v2, v7

    goto :goto_a4

    .line 104
    :cond_79
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "pkgname"

    .line 106
    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    invoke-virtual {v4, v8, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_9d} :catch_ab
    .catchall {:try_start_39 .. :try_end_9d} :catchall_a8

    const-wide/16 v8, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_a4

    goto :goto_77

    .line 118
    :cond_a4
    :goto_a4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_bc

    :catchall_a8
    move-exception v0

    move-object v3, v5

    goto :goto_c2

    :catch_ab
    move-exception v0

    move-object v3, v5

    goto :goto_b4

    :catch_ae
    move-exception v0

    goto :goto_b4

    :catchall_b0
    move-exception v0

    goto :goto_c2

    :catch_b2
    move-exception v0

    move-object v4, v3

    .line 115
    :goto_b4
    :try_start_b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b0

    if-eqz v3, :cond_bc

    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_bc
    :goto_bc
    if-eqz v4, :cond_c1

    .line 121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c1
    return v2

    :goto_c2
    if-eqz v3, :cond_c7

    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_c7
    throw v0
.end method
