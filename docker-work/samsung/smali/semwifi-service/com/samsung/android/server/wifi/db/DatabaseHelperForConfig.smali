.class public Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelperForConfig.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;


# static fields
.field static final COLUMN_CAPTIVE_PORTAL:Ljava/lang/String; = "CAPTIVE_PORTAL"

.field static final COLUMN_CONFIGKEY:Ljava/lang/String; = "CONFIG_KEY"

.field static final COLUMN_ID:Ljava/lang/String; = "_ID"

.field static final COLUMN_LOCK_DOWN:Ljava/lang/String; = "LOCK_DOWN"

.field static final COLUMN_NETWORK_DISABLE_REASON:Ljava/lang/String; = "NETWORK_DISABLE_REASON"

.field static final COLUMN_NETWORK_SCORE:Ljava/lang/String; = "NETWORK_SCORE"

.field static final COLUMN_NO_INTERNET_ACCESS_EXPECTED:Ljava/lang/String; = "NO_INTERNET_ACCESS_EXPECTED"

.field private static final DBG:Z

.field private static final DB_NAME:Ljava/lang/String; = "WifiConfigStore.db"

.field static final DB_TABLE:Ljava/lang/String; = "configs"

.field private static final DB_VERSION:I = 0x3

.field private static final PATH_STRING:Ljava/lang/String; = "config"

.field private static final TAG:Ljava/lang/String; = "SemWifiConfigManager.db"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "WifiConfigStore.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 55
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string p0, "SemWifiConfigManager.db"

    const-string v0, "createTable"

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v0, "CREATE TABLE configs(_ID INTEGER PRIMARY KEY AUTOINCREMENT,CONFIG_KEY TEXT, NETWORK_SCORE INTEGER,CAPTIVE_PORTAL INTEGER,LOCK_DOWN INTEGER,NO_INTERNET_ACCESS_EXPECTED INTEGER,NETWORK_DISABLE_REASON INTEGER) "

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    const-string p1, "couldn\'t create table in downloads database"

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string p0, "SemWifiConfigManager.db"

    const-string v0, "dropTable"

    .line 99
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v0, "DROP TABLE IF EXISTS configs"

    .line 101
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    const-string p1, "couldn\'t drop table in downloads database"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method static getConfigs(Landroid/database/Cursor;)Ljava/util/Map;
    .registers 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 244
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "CONFIG_KEY"

    .line 246
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "NETWORK_SCORE"

    .line 247
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CAPTIVE_PORTAL"

    .line 248
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "LOCK_DOWN"

    .line 249
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "NO_INTERNET_ACCESS_EXPECTED"

    .line 250
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "NETWORK_DISABLE_REASON"

    .line 251
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 253
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 254
    :goto_2e
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    const-string v9, "SemWifiConfigManager.db"

    if-nez v8, :cond_97

    .line 255
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 257
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 258
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 259
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 260
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 262
    new-instance v15, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v15, v8}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 263
    iput v10, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const/4 v10, 0x1

    if-ne v11, v10, :cond_5a

    move v11, v10

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    .line 264
    :goto_5b
    iput-boolean v11, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-ne v12, v10, :cond_61

    move v11, v10

    goto :goto_62

    :cond_61
    const/4 v11, 0x0

    .line 265
    :goto_62
    iput-boolean v11, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-ne v13, v10, :cond_67

    goto :goto_68

    :cond_67
    const/4 v10, 0x0

    .line 266
    :goto_68
    iput-boolean v10, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 267
    iput v14, v15, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 269
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_76

    .line 270
    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    .line 271
    :cond_76
    sget-boolean v10, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->DBG:Z

    if-eqz v10, :cond_93

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "there are several "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " networks"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_93
    :goto_93
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2e

    .line 276
    :cond_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigs size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method static getContentValues(Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/content/ContentValues;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    const-string v2, "CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NETWORK_SCORE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAPTIVE_PORTAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOCK_DOWN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NO_INTERNET_ACCESS_EXPECTED"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "NETWORK_DISABLE_REASON"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static getPathString()Ljava/lang/String;
    .registers 1

    const-string v0, "config"

    return-object v0
.end method


# virtual methods
.method public addOrUpdate(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 11

    const-string v0, "SemWifiConfigManager.db"

    const/4 v1, 0x0

    .line 191
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getContentValues(Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x1

    .line 192
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getTableName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    aput-object v8, v7, v1

    .line 193
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getTableName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdate a network "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getIdColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_61} :catch_62

    return v3

    :catch_62
    move-exception p0

    const-string p1, "failed to add or update network"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-boolean p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->DBG:Z

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_6f
    return v1
.end method

.method public checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 3

    return-object p2
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "SemWifiConfigManager.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 208
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getTableName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getUniqueColumnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 209
    invoke-virtual {v3, v4, p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove a network configKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_45} :catch_46

    return v2

    :catch_46
    move-exception p0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->DBG:Z

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_62
    return v1
.end method

.method public deleteAll()V
    .registers 3

    const-string v0, "SemWifiConfigManager.db"

    const-string v1, "drop and re-create table"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public getConfigs()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_5
    const-string v2, "configs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_ID ASC"

    .line 230
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_12} :catch_2c

    if-eqz p0, :cond_26

    .line 233
    :try_start_14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getConfigs(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 235
    :try_start_18
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_1b} :catch_2c

    return-object v0

    :catchall_1c
    move-exception v0

    .line 230
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p0

    :try_start_22
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw v0

    :cond_26
    if-eqz p0, :cond_3b

    .line 235
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_3b

    :catch_2c
    move-exception p0

    const-string v0, "SemWifiConfigManager.db"

    const-string v1, "failed to get managed configurations"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->DBG:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    .line 239
    :cond_3b
    :goto_3b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getContentUri(J)Landroid/net/Uri;
    .registers 3

    const-string p0, "config"

    .line 119
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    if-eqz p1, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .registers 1

    const-string p0, "_ID"

    return-object p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .registers 1

    const-string p0, "_ID"

    return-object p0
.end method

.method public getProjectionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "_ID"

    .line 130
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONFIG_KEY"

    .line 131
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NETWORK_SCORE"

    .line 132
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CAPTIVE_PORTAL"

    .line 133
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LOCK_DOWN"

    .line 134
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NO_INTERNET_ACCESS_EXPECTED"

    .line 135
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NETWORK_DISABLE_REASON"

    .line 136
    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 1

    const-string p0, "configs"

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    const-string p0, "vnd.android.cursor.dir/vnd.samsung.wifi.config"

    return-object p0
.end method

.method public getUniqueColumnName()Ljava/lang/String;
    .registers 1

    const-string p0, "CONFIG_KEY"

    return-object p0
.end method

.method public isValid(Landroid/content/ContentValues;)Z
    .registers 3

    .line 152
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_11

    const-string p0, "CONFIG_KEY"

    .line 153
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "SemWifiConfigManager.db"

    const-string v1, "populating new database"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upgrading WifiConfigStore database from version "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", which will destroy all old data"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "SemWifiConfigManager.db"

    invoke-static {p3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2a

    const/4 p0, 0x2

    if-eq p2, p0, :cond_34

    goto :goto_3e

    :cond_2a
    const-string p0, "add NoInternetAccessExpected"

    .line 70
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ALTER TABLE configs ADD COLUMN NO_INTERNET_ACCESS_EXPECTED INTEGER"

    .line 71
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_34
    const-string p0, "add networkDisableReason"

    .line 74
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ALTER TABLE configs ADD COLUMN NETWORK_DISABLE_REASON INTEGER"

    .line 75
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_3e
    return-void
.end method
