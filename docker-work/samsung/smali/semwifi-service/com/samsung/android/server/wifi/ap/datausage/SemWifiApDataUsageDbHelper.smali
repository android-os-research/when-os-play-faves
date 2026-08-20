.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemWifiApDataUsageDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "SemWifiApDataUsageHistory.db"

.field private static final DATA_USAGE_TABLE_NAME:Ljava/lang/String; = "wifi_ap_data_usage_table"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final JSON_KEY_CLIENT_DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final JSON_KEY_CLIENT_MAC:Ljava/lang/String; = "mac"

.field public static final JSON_KEY_CLIENT_NAME:Ljava/lang/String; = "name"

.field public static final JSON_KEY_CLIENT_TIME:Ljava/lang/String; = "time"

.field private static final KEY_CLIENTS_DETAILS_JSON_OBJECT:Ljava/lang/String; = "clients_details_json_object"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_TOP_3_CLIENTS_LIST_PLUS_OTHERS:Ljava/lang/String; = "client_top_3_plus_others"

.field private static final KEY_TOTAL_DATA_CONSUMED:Ljava/lang/String; = "total_data_consumed"

.field private static final TAG:Ljava/lang/String; = "SemWifiApDataUsageDbHelper"

.field private static final mDBVersion:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "SemWifiApDataUsageHistory.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private convertStringDateToTimeStamp(Ljava/lang/String;)J
    .registers 3

    .line 131
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_f} :catch_10

    return-wide p0

    :catch_10
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private convertTimestampToStringDate(J)Ljava/lang/String;
    .registers 5

    .line 122
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 124
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized createDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    monitor-enter p0

    .line 70
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE wifi_ap_data_usage_table(date DATE NOT NULL,total_data_consumed BIGINT NOT NULL DEFAULT 0, clients_details_json_object VARCHAR NOT NULL DEFAULT \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "client_top_3_plus_others"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VARCHAR NOT NULL DEFAULT \'\',  PRIMARY KEY("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "SemWifiApDataUsageDbHelper"

    const-string v0, "SemWifiApDataUsageHistory.dbis created with Table name =wifi_ap_data_usage_table"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 80
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized dropDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "DROP TABLE IF EXISTS wifi_ap_data_usage_table"

    .line 86
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 87
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDate(III)Ljava/lang/String;
    .registers 6

    .line 105
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 106
    new-instance v0, Ljava/util/Date;

    add-int/lit16 p3, p3, -0x76c

    invoke-direct {v0, p3, p2, p1}, Ljava/util/Date;-><init>(III)V

    .line 107
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTodayDate()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "wifi_ap_data_usage_table"

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception p1

    goto :goto_13

    :catch_a
    :try_start_a
    const-string p1, "SemWifiApDataUsageDbHelper"

    const-string p2, "SQLException"

    .line 255
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_8

    .line 257
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized insertOrUpdateOnGivenDate(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5

    monitor-enter p0

    .line 274
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->isEntryPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 276
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_12

    .line 278
    :cond_f
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 280
    :goto_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string p2, "SemWifiApDataUsageDbHelper"

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrUpdateOnGivenDate() : data has been updated or inserted for date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 282
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isEntryPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "select * from wifi_ap_data_usage_table where date =?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 145
    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    goto :goto_18

    :cond_17
    move p2, v3

    :goto_18
    if-lez p2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 150
    :goto_1c
    monitor-exit p0

    return v1

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "wifi_ap_data_usage_table"

    const-string v1, "date =?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 264
    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_e} :catch_11
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_18

    :catchall_f
    move-exception p1

    goto :goto_1a

    :catch_11
    :try_start_11
    const-string p1, "SemWifiApDataUsageDbHelper"

    const-string p2, "SQLException"

    .line 266
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_f

    .line 268
    :goto_18
    monitor-exit p0

    return-void

    :goto_1a
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized deleteDataBeforeNMonths(I)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_66

    const/16 v1, 0xc

    if-le p1, v1, :cond_9

    goto :goto_66

    .line 159
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, p1

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-gez v2, :cond_1e

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 p1, p1, -0x1

    .line 167
    :cond_1e
    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "wifi_ap_data_usage_table"

    const-string v3, "date<?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 169
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 170
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v1, "SemWifiApDataUsageDbHelper"

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDataBeforeNMonths() : delete data before date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_64

    const-string p1, "SemWifiApDataUsageDbHelper"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Usage 6 Month before data is removed: row deleted = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_83

    .line 175
    :cond_64
    monitor-exit p0

    return-void

    :cond_66
    :goto_66
    :try_start_66
    const-string v0, "SemWifiApDataUsageDbHelper"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from months = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not support"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_83

    .line 157
    monitor-exit p0

    return-void

    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClientListJsonObjectOfGivenDate(III)Lorg/json/JSONObject;
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 222
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "select clients_details_json_object from wifi_ap_data_usage_table where date =?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 224
    invoke-virtual {p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 226
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_39

    :cond_1e
    const-string p3, "clients_details_json_object"

    .line 228
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_4a

    .line 230
    :try_start_28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_2d} :catch_2f
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4a

    move-object v0, v1

    goto :goto_33

    :catch_2f
    move-exception p3

    .line 232
    :try_start_30
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    :goto_33
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_1e

    :cond_39
    if-eqz p1, :cond_3e

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_3e
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-nez v0, :cond_48

    .line 243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_4a

    .line 245
    :cond_48
    monitor-exit p0

    return-object v0

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentDayClientListJsonObject()Lorg/json/JSONObject;
    .registers 5

    monitor-enter p0

    .line 210
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 214
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getClientListJsonObjectOfGivenDate(III)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMhsDataConsumedOfGivenDate(III)J
    .registers 10

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 193
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select * from wifi_ap_data_usage_table where date =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 195
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_29

    const-string p2, "total_data_consumed"

    .line 196
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_29
    if-eqz p1, :cond_2e

    .line 200
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_2e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 203
    monitor-exit p0

    return-wide v0

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMonthlyData(JJ)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    cmp-long v0, v4, v2

    const-string v6, "SemWifiApDataUsageDbHelper"

    if-gez v0, :cond_28

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMonthlyData(): wrong parameters date1="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " date2="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertTimestampToStringDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertTimestampToStringDate(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 411
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getTodayDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT strftime(\'%m\',date) AS month, strftime(\'%Y\',date) AS year, SUM(total_data_consumed) AS total_data_consumed FROM wifi_ap_data_usage_table WHERE date>="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "date"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "<="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " GROUP BY month , year ORDER BY year ASC, month ASC"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 419
    invoke-virtual {v10, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 420
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 421
    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, -0x1

    const/4 v2, 0x2

    .line 422
    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->add(II)V

    const-string v3, " datausage = "

    const-string v11, " dateTimestamp="

    const-string v12, " , year = "

    const-string v13, "month = "

    const-string v14, " "

    const/4 v15, 0x1

    if-eqz v8, :cond_1da

    .line 425
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1da

    :goto_cd
    :try_start_cd
    const-string v0, "month"

    .line 428
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "year"

    .line 429
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v15

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_ea} :catch_1bb

    move-object/from16 v16, v10

    .line 432
    :try_start_ec
    invoke-direct {v1, v15, v0, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object v10

    .line 433
    invoke-direct {v1, v10}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertStringDateToTimeStamp(Ljava/lang/String;)J

    move-result-wide v4

    const-string v15, "total_data_consumed"

    .line 434
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_100
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_100} :catch_1b6

    move-object/from16 v18, v8

    const/4 v8, 0x1

    const/4 v15, 0x2

    .line 436
    :try_start_104
    invoke-virtual {v9, v15, v8}, Ljava/util/Calendar;->add(II)V

    .line 437
    :goto_107
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    cmp-long v8, v19, v4

    if-gez v8, :cond_168

    .line 438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_149
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_149} :catch_1b3

    move-object v2, v7

    :try_start_14a
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 440
    invoke-virtual {v9, v1, v7}, Ljava/util/Calendar;->add(II)V

    move-object v7, v2

    move-wide/from16 v1, v19

    goto :goto_107

    :cond_168
    move-wide/from16 v19, v1

    move-object v2, v7

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dateString = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v19

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b0
    .catch Ljava/lang/NumberFormatException; {:try_start_14a .. :try_end_1b0} :catch_1b1

    goto :goto_1c4

    :catch_1b1
    move-exception v0

    goto :goto_1c1

    :catch_1b3
    move-exception v0

    move-object v2, v7

    goto :goto_1c1

    :catch_1b6
    move-exception v0

    move-object v2, v7

    move-object/from16 v18, v8

    goto :goto_1c1

    :catch_1bb
    move-exception v0

    move-object v2, v7

    move-object/from16 v18, v8

    move-object/from16 v16, v10

    .line 447
    :goto_1c1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 449
    :goto_1c4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1cd

    const/4 v1, 0x2

    const/4 v4, 0x1

    goto :goto_1e1

    :cond_1cd
    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move-object v7, v2

    move-object/from16 v10, v16

    move-object/from16 v8, v18

    const/4 v2, 0x2

    const/4 v15, 0x1

    goto/16 :goto_cd

    :cond_1da
    move-object v2, v7

    move-object/from16 v18, v8

    move-object/from16 v16, v10

    move v4, v15

    const/4 v1, 0x2

    .line 453
    :goto_1e1
    invoke-virtual {v9, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 454
    :goto_1e4
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_23e

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    .line 457
    invoke-virtual {v9, v5, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1e4

    .line 460
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_25b

    .line 463
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_25b
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2
.end method

.method public declared-synchronized getTodayDataConsumed()J
    .registers 5

    monitor-enter p0

    .line 181
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 184
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 185
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getMhsDataConsumedOfGivenDate(III)J

    move-result-wide v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-wide v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTop3ClientsEachDayBetweenGivenDates(JJ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    cmp-long v0, p3, p1

    const-string v1, "SemWifiApDataUsageDbHelper"

    if-gez v0, :cond_22

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeeklyClientData(): wrong parameters date1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " date2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertTimestampToStringDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertTimestampToStringDate(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 372
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getTodayDate()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT date, client_top_3_plus_others FROM wifi_ap_data_usage_table WHERE date>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ORDER BY "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASC"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_ec

    .line 383
    :cond_b8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "client_top_3_plus_others"

    .line 384
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->convertStringDateToTimeStamp(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_b8

    goto :goto_f1

    :cond_ec
    const-string p0, "Something went wrong while fetching weekly data"

    .line 389
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f1
    if-eqz p1, :cond_f6

    .line 393
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_f6
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0
.end method

.method public declared-synchronized insertOrUpdateClientDataAndTimeOnGivenDate(IIILjava/lang/String;JJ)V
    .registers 12

    monitor-enter p0

    .line 299
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "select * from wifi_ap_data_usage_table where date =?"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 301
    invoke-virtual {p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_5f

    .line 303
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_69

    if-eqz v0, :cond_5f

    :cond_1d
    :try_start_1d
    const-string v0, "clients_details_json_object"

    .line 306
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "data_usage"

    .line 309
    invoke-virtual {v0, v2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "time"

    .line 310
    invoke-virtual {v0, v2, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "date"

    .line 314
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "clients_details_json_object"

    .line 315
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_54} :catch_55
    .catchall {:try_start_1d .. :try_end_54} :catchall_69

    goto :goto_59

    :catch_55
    move-exception v0

    .line 318
    :try_start_56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 320
    :goto_59
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_5f
    if-eqz p3, :cond_64

    .line 325
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_64
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_69

    .line 328
    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertOrUpdateFullDetailsOnGivenDate(IIIJLorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 342
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 346
    new-instance p6, Landroid/content/ContentValues;

    invoke-direct {p6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "date"

    .line 347
    invoke-virtual {p6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "total_data_consumed"

    .line 348
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "clients_details_json_object"

    .line 349
    invoke-virtual {p6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_top_3_plus_others"

    .line 350
    invoke-virtual {p6, v0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->isEntryPresent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_5e

    .line 353
    invoke-direct {p0, p3, p1, p6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string p6, "SemWifiApDataUsageDbHelper"

    .line 354
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "full data has been updated into DB: date:"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data consumed:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", clientJsonObject size: "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 357
    :cond_5e
    invoke-direct {p0, p3, p6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    const-string p6, "SemWifiApDataUsageDbHelper"

    .line 358
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "full data has been inserted into DB: date:"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data consumed:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", clientJsonObject Size: "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_8b
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_90

    .line 361
    monitor-exit p0

    return-void

    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public insertOrUpdateFullDetailsOnToday(JLorg/json/JSONObject;Ljava/lang/String;)V
    .registers 15

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insertOrUpdateFullDetailsOnGivenDate(IIIJLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized insertOrUpdateMhsDataUsageOnGivenDate(IIIJ)V
    .registers 6

    monitor-enter p0

    .line 288
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "date"

    .line 290
    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "total_data_consumed"

    .line 291
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insertOrUpdateOnGivenDate(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 293
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->createDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onUpgrade() - oldVersion : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newVersion : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiApDataUsageDbHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized resetTable()V
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->dropDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->createDailyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "SemWifiApDataUsageDbHelper"

    const-string v1, "SemWifiApDataUsageHistory.db resetTable wifi_ap_data_usage_table"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 99
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
