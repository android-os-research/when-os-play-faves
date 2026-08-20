.class public Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelperForHistory.java"

# interfaces
.implements Lcom/samsung/android/wifi/db/ISemDatabaseHelper;


# static fields
.field static final blacklist CONTROL_ID:Ljava/lang/String; = "conrol_id"

.field private static final blacklist DBG:Z

.field private static final blacklist DB_NAME:Ljava/lang/String; = "WifiHistory.db"

.field static final blacklist DB_TABLE:Ljava/lang/String; = "WifiHistory"

.field private static final blacklist DB_VERSION:I = 0x1

.field private static final blacklist DB_VERSION_NOP_UPGRADE_FROM:I = 0x0

.field private static final blacklist DB_VERSION_NOP_UPGRADE_TO:I = 0x1

.field static final blacklist DISABLE_NUMBER:Ljava/lang/String; = "disable_number"

.field private static final blacklist DISABLE_WIFI:I = 0x0

.field static final blacklist ENABLE_NUMBER:Ljava/lang/String; = "enable_number"

.field private static final blacklist ENABLE_WIFI:I = 0x1

.field static final blacklist FIRST_CONTROL:Ljava/lang/String; = "first_control"

.field static final blacklist LAST_CONTROL:Ljava/lang/String; = "last_control"

.field static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final blacklist PATH_STRING:Ljava/lang/String; = "control"

.field private static final blacklist TAG:Ljava/lang/String; = "DatabaseHelperForHistory"

.field static final blacklist TIME_STAMP:Ljava/lang/String; = "time_stamp"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "WifiHistory.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    return-void
.end method

.method public static blacklist addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "last_control"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v1, "control"

    invoke-static {v1}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DatabaseHelperForHistory"

    if-eqz v1, :cond_2b

    .line 222
    sget-boolean v1, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->DBG:Z

    if-eqz v1, :cond_30

    const-string v1, "addOrUpdateControlHistory, update success"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 224
    :cond_2b
    const-string v1, "addOrUpdateControlHistory, update failed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_30
    :goto_30
    return-void
.end method

.method public static blacklist clearAll(Landroid/content/ContentResolver;)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 230
    const-string v0, "control"

    invoke-static {v0}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private blacklist createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    const-string v0, "DatabaseHelperForHistory"

    const-string v1, "createTable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_7
    const-string v1, "CREATE TABLE WifiHistory(conrol_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT, time_stamp LONG, enable_number INTEGER, disable_number INTEGER, first_control LONG, last_control INTEGER) "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_d

    .line 102
    goto :goto_13

    .line 100
    :catch_d
    move-exception v1

    .line 101
    .local v1, "ex":Landroid/database/SQLException;
    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "ex":Landroid/database/SQLException;
    :goto_13
    return-void
.end method

.method private blacklist dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    const-string v0, "DatabaseHelperForHistory"

    const-string v1, "dropTable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_7
    const-string v1, "DROP TABLE IF EXISTS WifiHistory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_d

    .line 111
    goto :goto_13

    .line 109
    :catch_d
    move-exception v1

    .line 110
    .local v1, "ex":Landroid/database/SQLException;
    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v1    # "ex":Landroid/database/SQLException;
    :goto_13
    return-void
.end method

.method public static blacklist dump(Landroid/content/ContentResolver;Ljava/io/PrintWriter;)V
    .registers 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 267
    const-string v0, "DatabaseHelperForHistory"

    const-string v1, "control"

    invoke-static {v1}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_b
    const-string/jumbo v7, "time_stamp ASC"

    move-object v2, p0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_14} :catch_99

    .line 270
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_21

    .line 271
    :try_start_16
    const-string v3, "dumpControlHistory, cursor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_8d

    .line 290
    if-eqz v2, :cond_20

    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_20} :catch_99

    .line 272
    :cond_20
    return-void

    .line 274
    :cond_21
    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 277
    .local v3, "indexPackageName":I
    const-string/jumbo v4, "time_stamp"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, "indexLastControlTime":I
    const-string v5, "last_control"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 280
    .local v5, "indexOfLastControl":I
    :goto_37
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_87

    .line 281
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 283
    .local v7, "lastControl":I
    const-string/jumbo v8, "yyyy/MM/dd kk:mm:ss "

    .line 284
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 283
    invoke-static {v8, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 285
    .local v8, "lastControlTime":Ljava/lang/CharSequence;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastControlTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastControl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 287
    if-nez v7, :cond_74

    const-string v10, "false"

    goto :goto_77

    :cond_74
    const-string/jumbo v10, "true"

    :goto_77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 285
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_85
    .catchall {:try_start_21 .. :try_end_85} :catchall_8d

    .line 289
    nop

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "lastControl":I
    .end local v8    # "lastControlTime":Ljava/lang/CharSequence;
    goto :goto_37

    .line 290
    .end local v3    # "indexPackageName":I
    .end local v4    # "indexLastControlTime":I
    .end local v5    # "indexOfLastControl":I
    :cond_87
    if-eqz v2, :cond_8c

    :try_start_89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_8c} :catch_99

    .line 292
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_8c
    goto :goto_9f

    .line 268
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_8d
    move-exception v3

    if-eqz v2, :cond_98

    :try_start_90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v4

    :try_start_95
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "uri":Landroid/net/Uri;
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :cond_98
    :goto_98
    throw v3
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_95 .. :try_end_99} :catch_99

    .line 290
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_99
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "dumpControlHistory, IllegalStateException "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_9f
    return-void
.end method

.method public static blacklist getLastHistory(Landroid/content/ContentResolver;)Landroid/util/Pair;
    .registers 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 236
    const-string v0, "DatabaseHelperForHistory"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "control"

    invoke-static {v2}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "time_stamp DESC"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_9c

    .line 238
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_22

    .line 239
    :try_start_16
    const-string v3, "getControlHistory, cursor is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_90

    .line 240
    nop

    .line 258
    if-eqz v2, :cond_21

    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_21} :catch_9c

    .line 240
    :cond_21
    return-object v1

    .line 242
    :cond_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, "indexOfPackageName":I
    const-string v4, "last_control"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "indexOfLastControl":I
    const-string/jumbo v5, "time_stamp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, "indexLastControlTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 248
    .local v6, "nowTimeMs":J
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_8a

    .line 249
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 250
    .local v8, "timeMs":J
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "packageName":Ljava/lang/String;
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 252
    .local v11, "lastControl":I
    cmp-long v12, v8, v6

    if-gez v12, :cond_65

    .line 253
    const/4 v12, 0x1

    if-ne v11, v12, :cond_56

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    :goto_57
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12
    :try_end_5f
    .catchall {:try_start_22 .. :try_end_5f} :catchall_90

    .line 258
    if-eqz v2, :cond_64

    :try_start_61
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_64} :catch_9c

    .line 253
    :cond_64
    return-object v12

    .line 255
    :cond_65
    :try_start_65
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "future item was stored: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_90

    .line 257
    nop

    .end local v8    # "timeMs":J
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "lastControl":I
    goto :goto_3c

    .line 258
    .end local v3    # "indexOfPackageName":I
    .end local v4    # "indexOfLastControl":I
    .end local v5    # "indexLastControlTime":I
    .end local v6    # "nowTimeMs":J
    :cond_8a
    if-eqz v2, :cond_8f

    :try_start_8c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/IllegalStateException; {:try_start_8c .. :try_end_8f} :catch_9c

    .line 261
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_8f
    goto :goto_a5

    .line 236
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_90
    move-exception v3

    if-eqz v2, :cond_9b

    :try_start_93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v4

    :try_start_98
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    :cond_9b
    :goto_9b
    throw v3
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9c} :catch_9c

    .line 258
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    :catch_9c
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "getLastHistory, IllegalStateException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 262
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_a5
    return-object v1
.end method

.method public static blacklist getPathString()Ljava/lang/String;
    .registers 1

    .line 211
    const-string v0, "control"

    return-object v0
.end method


# virtual methods
.method public blacklist checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v0, "filteredValues":Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 159
    .local v1, "now":J
    const-string/jumbo v3, "time_stamp"

    const/4 v4, 0x0

    invoke-static {v3, v4, p2, v1, v2}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v3, "last_control"

    const/4 v5, 0x0

    invoke-static {v3, v4, p2, v5}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v4

    .line 163
    .local v4, "lastControl":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v3, "first_control"

    invoke-static {v3, p1, p2, v1, v2}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getLong(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v3, "enable_number"

    invoke-static {v3, p1, p2, v5}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v6

    .line 170
    const/4 v7, 0x1

    if-ne v4, v7, :cond_47

    move v8, v7

    goto :goto_48

    :cond_47
    move v8, v5

    :goto_48
    add-int/2addr v6, v8

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v3, "disable_number"

    invoke-static {v3, p1, p2, v5}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getInteger(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;I)I

    move-result v6

    .line 173
    if-nez v4, :cond_59

    move v5, v7

    :cond_59
    add-int/2addr v6, v5

    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    return-object v0
.end method

.method public blacklist getContentUri(J)Landroid/net/Uri;
    .registers 4
    .param p1, "index"    # J

    .line 123
    const-string v0, "control"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p1, "writable"    # Z

    .line 203
    if-eqz p1, :cond_7

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 206
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultSortOrder()Ljava/lang/String;
    .registers 2

    .line 149
    const-string/jumbo v0, "time_stamp ASC"

    return-object v0
.end method

.method public blacklist getIdColumnName()Ljava/lang/String;
    .registers 2

    .line 197
    const-string v0, "conrol_id"

    return-object v0
.end method

.method public blacklist getProjectionMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "projectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "conrol_id"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "package_name"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "enable_number"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "disable_number"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "last_control"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "first_control"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object v0
.end method

.method public blacklist getTableName()Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "WifiHistory"

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 117
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.samsung.wifi.control"

    return-object v0
.end method

.method public blacklist getUniqueColumnName()Ljava/lang/String;
    .registers 2

    .line 190
    const-string v0, "package_name"

    return-object v0
.end method

.method public blacklist isValid(Landroid/content/ContentValues;)Z
    .registers 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 181
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_19

    .line 182
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 183
    const-string v0, "last_control"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 181
    :goto_1a
    return v0
.end method

.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    const-string v0, "DatabaseHelperForHistory"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .line 75
    if-nez p2, :cond_7

    .line 76
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 78
    return-void

    .line 80
    :cond_6
    const/4 p2, 0x1

    .line 83
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading downloads database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelperForHistory"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    return-void
.end method
