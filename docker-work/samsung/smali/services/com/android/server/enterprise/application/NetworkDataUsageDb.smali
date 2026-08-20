.class public Lcom/android/server/enterprise/application/NetworkDataUsageDb;
.super Ljava/lang/Object;
.source "NetworkDataUsageDb.java"


# static fields
.field public static final MOBILE_DATA_USAGE_RCV:Ljava/lang/String; = "mobiledatausagercv"

.field public static final MOBILE_DATA_USAGE_SEND:Ljava/lang/String; = "mobiledatausagesend"

.field public static final TABLE_NAME:Ljava/lang/String; = "NetworkDataUsage"

.field public static final TAG:Ljava/lang/String; = "NetworkDataUsageDb"

.field public static final UID:Ljava/lang/String; = "_id"

.field public static final WIFI_DATA_USAGE_RCV:Ljava/lang/String; = "wifidatausagesendrcv"

.field public static final WIFI_DATA_USAGE_SEND:Ljava/lang/String; = "wifidatausagesend"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "NetworkDataUsageDb"

    :try_start_2
    const-string v1, " (_id integer primary key , mobiledatausagercv long, wifidatausagesendrcv long, mobiledatausagesend long, wifidatausagesend long );"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table NetworkDataUsage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "::createDmAppMgrTable: Table is Created "

    .line 427
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    const-string p0, "::createDmAppMgrTable: Exception while table is creating "

    .line 431
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    const-string v0, "NetworkDataUsageDb"

    const-string v1, "dmappmgr.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 387
    :try_start_6
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string p0, "::getAppControlDB: DB is Created "

    .line 391
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    const-string p0, "::getAppControlDB: Exception to create DB"

    .line 395
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    if-eqz v3, :cond_22

    const-string p0, "NetworkDataUsage"

    .line 399
    invoke-static {v3, p0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 401
    invoke-static {v3}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_22
    return-object v3
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "NetworkDataUsageDb"

    const/4 v1, 0x0

    if-eqz p0, :cond_37

    if-eqz p1, :cond_37

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37

    .line 447
    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE 1=0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string p1, "::isTableExists: Table exists "

    .line 451
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_30} :catch_32

    move v1, p0

    goto :goto_37

    :catch_32
    const-string p0, "::isTableExists:Table Does not exists "

    .line 457
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return v1
.end method


# virtual methods
.method public getMobileDataUsage()Ljava/util/Hashtable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const/4 v1, 0x0

    .line 297
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_9d
    .catchall {:try_start_3 .. :try_end_9} :catchall_9a

    if-nez p0, :cond_11

    if-eqz p0, :cond_10

    .line 363
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    return-object v1

    :cond_11
    :try_start_11
    const-string v3, "NetworkDataUsage"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 305
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_97
    .catchall {:try_start_11 .. :try_end_1e} :catchall_c2

    if-eqz v2, :cond_8e

    .line 311
    :try_start_20
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_8a
    .catchall {:try_start_20 .. :try_end_25} :catchall_87

    .line 313
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 317
    :cond_2b
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 321
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 319
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    const-string/jumbo v4, "mobiledatausagesend"

    .line 325
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 323
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    const-string/jumbo v4, "mobiledatausagercv"

    .line 329
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 327
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    const-string/jumbo v4, "wifidatausagesend"

    .line 333
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 331
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    const-string/jumbo v4, "wifidatausagesendrcv"

    .line 337
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 335
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 339
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_81} :catch_85
    .catchall {:try_start_25 .. :try_end_81} :catchall_87

    if-nez v1, :cond_2b

    :cond_83
    move-object v1, v3

    goto :goto_8e

    :catch_85
    move-exception v0

    goto :goto_8c

    :catchall_87
    move-exception v0

    move-object v1, v2

    goto :goto_c3

    :catch_8a
    move-exception v0

    move-object v3, v1

    :goto_8c
    move-object v1, v2

    goto :goto_a0

    :cond_8e
    :goto_8e
    if-eqz v2, :cond_93

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_93
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c1

    :catch_97
    move-exception v0

    move-object v3, v1

    goto :goto_a0

    :catchall_9a
    move-exception v0

    move-object p0, v1

    goto :goto_c3

    :catch_9d
    move-exception v0

    move-object p0, v1

    move-object v3, p0

    :goto_a0
    :try_start_a0
    const-string v2, "NetworkDataUsageDb"

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileDataUsage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_a0 .. :try_end_b6} :catchall_c2

    if-eqz v1, :cond_bb

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bb
    if-eqz p0, :cond_c0

    .line 363
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c0
    move-object v1, v3

    :goto_c1
    return-object v1

    :catchall_c2
    move-exception v0

    :goto_c3
    if-eqz v1, :cond_c8

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c8
    if-eqz p0, :cond_cd

    .line 363
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 367
    :cond_cd
    throw v0
.end method

.method public updateDataUsage(Ljava/util/Hashtable;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 134
    :try_start_8
    iget-object v0, v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_15b

    if-nez v5, :cond_11

    return v3

    :cond_11
    if-eqz v1, :cond_157

    .line 142
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_157

    .line 144
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    move-object v8, v4

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_155

    .line 152
    :try_start_2f
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/application/NetworkStats;

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM NetworkDataUsage WHERE _id = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_51} :catch_126
    .catchall {:try_start_2f .. :try_end_51} :catchall_123

    const-string v12, "NetworkDataUsage"

    const-string/jumbo v13, "wifidatausagesendrcv"

    const-string/jumbo v14, "wifidatausagesend"

    const-string/jumbo v15, "mobiledatausagercv"

    const-string/jumbo v3, "mobiledatausagesend"

    if-eqz v10, :cond_de

    .line 162
    :try_start_61
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 166
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_db
    .catchall {:try_start_61 .. :try_end_6e} :catchall_123

    move-object/from16 v18, v5

    .line 170
    :try_start_70
    iget-wide v4, v9, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    add-long v4, v4, v16

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 176
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v5, v12

    .line 180
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    add-long/2addr v11, v3

    .line 182
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 186
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 190
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    add-long/2addr v11, v3

    .line 192
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 196
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 200
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    add-long/2addr v11, v3

    .line 202
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_c6} :catch_d7
    .catchall {:try_start_70 .. :try_end_c6} :catchall_d2

    move-object/from16 v4, v18

    const/4 v3, 0x0

    :try_start_c9
    invoke-virtual {v4, v5, v10, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cd} :catch_11e
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_14b

    if-lez v0, :cond_d0

    const/4 v7, 0x1

    :cond_d0
    const/4 v3, 0x0

    goto :goto_11a

    :catchall_d2
    move-exception v0

    move-object/from16 v4, v18

    goto/16 :goto_14c

    :catch_d7
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_121

    :catch_db
    move-exception v0

    move-object v4, v5

    goto :goto_121

    :cond_de
    move-object v4, v5

    move-object v5, v12

    .line 220
    :try_start_e0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "_id"

    .line 222
    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 226
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 224
    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 230
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 228
    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 234
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 232
    invoke-virtual {v10, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    iget-wide v11, v9, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_10e} :catch_120
    .catchall {:try_start_e0 .. :try_end_10e} :catchall_14b

    const/4 v3, 0x0

    .line 240
    :try_start_10f
    invoke-virtual {v4, v5, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_113} :catch_11e
    .catchall {:try_start_10f .. :try_end_113} :catchall_14b

    const-wide/16 v11, 0x0

    cmp-long v0, v11, v9

    if-gez v0, :cond_11a

    const/4 v7, 0x1

    .line 255
    :cond_11a
    :goto_11a
    :try_start_11a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_15c

    goto :goto_146

    :catch_11e
    move-exception v0

    goto :goto_129

    :catch_120
    move-exception v0

    :goto_121
    const/4 v3, 0x0

    goto :goto_129

    :catchall_123
    move-exception v0

    move-object v4, v5

    goto :goto_14c

    :catch_126
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    :goto_129
    :try_start_129
    const-string v5, "NetworkDataUsageDb"

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception occurred "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_129 .. :try_end_143} :catchall_14b

    if-eqz v8, :cond_146

    goto :goto_11a

    :cond_146
    :goto_146
    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    goto/16 :goto_23

    :catchall_14b
    move-exception v0

    :goto_14c
    if-eqz v8, :cond_151

    .line 255
    :try_start_14e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_151
    throw v0
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_152} :catch_15c

    :cond_152
    move-object v4, v5

    move v3, v7

    goto :goto_159

    :catch_155
    move-object v4, v5

    goto :goto_15c

    :cond_157
    move-object v4, v5

    const/4 v3, 0x0

    :goto_159
    move-object v5, v4

    goto :goto_15e

    :catch_15b
    move-object v3, v4

    :catch_15c
    :goto_15c
    move-object v5, v4

    const/4 v3, 0x0

    :goto_15e
    if-eqz v5, :cond_163

    .line 275
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_163
    return v3
.end method
