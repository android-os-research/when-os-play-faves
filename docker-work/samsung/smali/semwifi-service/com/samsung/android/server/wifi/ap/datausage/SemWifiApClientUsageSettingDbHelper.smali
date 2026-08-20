.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemWifiApClientUsageSettingDbHelper.java"


# static fields
.field private static final CLIENT_SETTING_DB_NAME:Ljava/lang/String; = "SemWifiApClientSettings.db"

.field private static final CLIENT_SETTING_DB_VERSION:I = 0x1

.field private static final CLIENT_SETTING_TABLE_NAME:Ljava/lang/String; = "client_setting_table"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "unknown name"

.field public static final KEY_DATA_LIMIT:Ljava/lang/String; = "device_data_limit"

.field public static final KEY_IS_SHARING_PAUSE_BY_USER:Ljava/lang/String; = "device_is_sharing_pause_by_user"

.field public static final KEY_MAC:Ljava/lang/String; = "device_mac"

.field public static final KEY_NAME:Ljava/lang/String; = "device_name"

.field public static final KEY_RECENT_SETTING_UPDATED_DATE:Ljava/lang/String; = "device_recent_setting_updated_date"

.field public static final KEY_TIME_LIMIT:Ljava/lang/String; = "device_time_limit"

.field private static final MAX_CLIENT_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SemWifiApClientUsageSettingDbHelper"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final validClientSettingsColumns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "SemWifiApClientSettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->updateColumnsList()V

    return-void
.end method

.method private deleteTheOldestDeviceFromTableIfTableSizeGreaterThanMax(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 364
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getCountOfDevicesInTable(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    const/16 v0, 0x64

    if-le p0, v0, :cond_6d

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT device_mac FROM client_setting_table ORDER BY device_recent_setting_updated_date ASC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, -0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_mac IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "client_setting_table"

    .line 368
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event : Client Setting Table Size reached Max Size. Action : deleting oldest device settings : before Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , current size = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApClientUsageSettingDbHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_6d

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client Setting DB: no. of client exceed 100 : row deleted = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6d
    return-void
.end method

.method private declared-synchronized dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "DROP TABLE IF EXISTS client_setting_table"

    .line 114
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Table is Drop"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 116
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getClientSettingContentValues(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)Landroid/content/ContentValues;
    .registers 10

    .line 442
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "device_mac"

    .line 443
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_name"

    .line 444
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "device_data_limit"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "device_time_limit"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "device_is_sharing_pause_by_user"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "device_recent_setting_updated_date"

    .line 448
    invoke-virtual {p0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getClientSettingJsonObject(Ljava/lang/String;JJILjava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 399
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "device_name"

    .line 401
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_data_limit"

    .line 402
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "device_time_limit"

    .line 403
    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "device_is_sharing_pause_by_user"

    .line 404
    invoke-virtual {p0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "device_recent_setting_updated_date"

    .line 405
    invoke-virtual {p0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_2a

    :catch_1f
    move-exception p1

    .line 407
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "SemWifiApClientUsageSettingDbHelper"

    const-string p2, "Exception occur can\'t make client json object"

    .line 408
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-object p0
.end method

.method private declared-synchronized getCountOfDevicesInTable(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "SELECT * FROM client_setting_table"

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 191
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 194
    :cond_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getTag()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "SemWifiApClientUsageSettingDbHelper"

    return-object p0
.end method

.method private getTodayDate()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 158
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_3
    const-string v0, "client_setting_table"

    const/4 v1, 0x0

    .line 202
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_13

    .line 204
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "db object is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 206
    :goto_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized insertOrUpdate(Landroid/content/ContentValues;)V
    .registers 6

    monitor-enter p0

    .line 248
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->isContentValueValid(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content Value is not valid"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_72

    .line 250
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    const-string v0, "device_recent_setting_updated_date"

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_mac"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 256
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->isEntryIsPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 257
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted for mac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->deleteTheOldestDeviceFromTableIfTableSizeGreaterThanMax(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6d

    .line 262
    :cond_4e
    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated for mac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_6d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_70
    .catchall {:try_start_12 .. :try_end_70} :catchall_72

    .line 266
    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isContentValueValid(Landroid/content/ContentValues;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 224
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "content values is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_78

    .line 225
    monitor-exit p0

    return v0

    .line 228
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "col name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_78

    .line 232
    monitor-exit p0

    return v0

    :cond_4a
    :try_start_4a
    const-string v1, "device_mac"

    .line 236
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->isMacValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac is not valid ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_78

    .line 239
    monitor-exit p0

    return v0

    :cond_75
    const/4 p1, 0x1

    .line 241
    monitor-exit p0

    return p1

    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isEntryIsPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "device_mac"

    .line 166
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "client_setting_table"

    const-string v4, "device_mac=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 167
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 177
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2a

    goto :goto_24

    :cond_23
    move p2, v9

    :goto_24
    if-lez p2, :cond_27

    goto :goto_28

    :cond_27
    move v0, v9

    .line 181
    :goto_28
    monitor-exit p0

    return v0

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isMacValid(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized restoreTheSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "device_mac"

    .line 384
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->isEntryIsPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTheSettings() : Inserted for mac : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_2d
    const-string v1, "device_recent_setting_updated_date"

    .line 390
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "device_name"

    .line 391
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTheSettings() : updated for mac : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 395
    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_3
    const-string v0, "client_setting_table"

    const-string v1, "device_mac=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 213
    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1a

    .line 215
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "db object is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 217
    :goto_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateColumnsList()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v1, "device_mac"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v1, "device_data_limit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v1, "device_time_limit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v1, "device_is_sharing_pause_by_user"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->validClientSettingsColumns:Ljava/util/HashSet;

    const-string v0, "device_recent_setting_updated_date"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public deleteClientSettingIfLastUpdateIsBeforeNMonth(I)V
    .registers 7

    const-string v0, "SemWifiApClientUsageSettingDbHelper"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6a

    const/16 v2, 0xc

    if-le p1, v2, :cond_a

    goto :goto_6a

    .line 344
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    .line 345
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v3, p1

    .line 346
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-gez v3, :cond_1f

    add-int/lit8 v3, v3, 0xc

    add-int/lit8 p1, p1, -0x1

    .line 353
    :cond_1f
    invoke-virtual {p0, v1, v3, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "client_setting_table"

    const-string v4, "device_recent_setting_updated_date<?"

    .line 355
    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 356
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteClientSettingIfLastUpdateIsBeforeNMonth() : delete data before date="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no. of row deleted = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_69

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Client Setting DB: Deleted Client setting that has no connection before 6 months : row deleted = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_69
    return-void

    .line 340
    :cond_6a
    :goto_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from months = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not support"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public factoryReset()V
    .registers 6

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_data_limit"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "device_time_limit"

    .line 137
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "device_is_sharing_pause_by_user"

    .line 138
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_mac IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT device_mac FROM client_setting_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_setting_table"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Table is factoryReset"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized getClientDetails(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7

    monitor-enter p0

    .line 312
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 313
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->isMacValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientDetails(): Mac is not valid : mac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_9f

    .line 315
    monitor-exit p0

    return-object v0

    .line 318
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select * from client_setting_table where device_mac=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 320
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_95

    const-string v2, "device_mac"

    const-string v3, "device_mac"

    .line 321
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_name"

    const-string v3, "device_name"

    .line 322
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_data_limit"

    const-string v3, "device_data_limit"

    .line 323
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "device_time_limit"

    const-string v3, "device_time_limit"

    .line 324
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "device_is_sharing_pause_by_user"

    const-string v3, "device_is_sharing_pause_by_user"

    .line 325
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_95
    if-eqz p1, :cond_9a

    .line 328
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_9a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9d
    .catchall {:try_start_26 .. :try_end_9d} :catchall_9f

    .line 330
    monitor-exit p0

    return-object v0

    :catchall_9f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDate(III)Ljava/lang/String;
    .registers 6

    .line 147
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 148
    new-instance v0, Ljava/util/Date;

    add-int/lit16 p3, p3, -0x76c

    invoke-direct {v0, p3, p2, p1}, Ljava/util/Date;-><init>(III)V

    .line 149
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDbDataInJsonString()Ljava/lang/String;
    .registers 14

    .line 415
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select * from client_setting_table"

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 419
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_67

    :cond_18
    const-string v3, "device_mac"

    .line 421
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_name"

    .line 422
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "device_data_limit"

    .line 423
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v4, "device_time_limit"

    .line 424
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v4, "device_is_sharing_pause_by_user"

    .line 425
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v4, "device_recent_setting_updated_date"

    .line 426
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v5, p0

    .line 428
    :try_start_55
    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getClientSettingJsonObject(Ljava/lang/String;JJILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v3

    .line 430
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 432
    :goto_61
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_18

    .line 434
    :cond_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_6a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 437
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized insertOrUpdateDeviceDataLimitInBytes(Ljava/lang/String;J)V
    .registers 6

    monitor-enter p0

    .line 282
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_mac"

    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_data_limit"

    .line 284
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdate(Landroid/content/ContentValues;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 286
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertOrUpdateDeviceIsPauseSharing(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 302
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_mac"

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_is_sharing_pause_by_user"

    .line 304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdate(Landroid/content/ContentValues;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 306
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertOrUpdateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 272
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_mac"

    .line 273
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_name"

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdate(Landroid/content/ContentValues;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 276
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertOrUpdateDeviceTimeLimitInMilliSeconds(Ljava/lang/String;J)V
    .registers 6

    monitor-enter p0

    .line 292
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_mac"

    .line 293
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_time_limit"

    .line 294
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->insertOrUpdate(Landroid/content/ContentValues;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 296
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE client_setting_table(device_mac CHAR(17) NOT NULL,device_name VARCHAR DEFAULT \"unknown name\",device_data_limit BIGINT DEFAULT 0, device_time_limit BIGINT DEFAULT 0, device_is_sharing_pause_by_user INTEGER DEFAULT 0, device_recent_setting_updated_date DATE NOT NULL, PRIMARY KEY(device_mac))"

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Client Usage Setting DB is created"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DB Upgraded: Older version : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " New Version : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized resetTable()V
    .registers 2

    monitor-enter p0

    .line 123
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 127
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateClientSettingDbUsingJsonObject(Lorg/json/JSONObject;)V
    .registers 15

    const-string v0, "SemWifiApClientUsageSettingDbHelper"

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 456
    :try_start_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 459
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 461
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "device_name"

    .line 462
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "device_data_limit"

    .line 463
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v4, "device_time_limit"

    .line 464
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v4, "device_is_sharing_pause_by_user"

    .line 465
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v4, "device_recent_setting_updated_date"

    .line 466
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, p0

    .line 467
    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getClientSettingContentValues(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->restoreTheSettings(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_41} :catch_42

    goto :goto_a

    :catch_42
    move-exception p1

    .line 471
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "Exception occur can\'t proceed to save in DB"

    .line 472
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_4b
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->deleteTheOldestDeviceFromTableIfTableSizeGreaterThanMax(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 475
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string p0, "Restore completed"

    .line 476
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
