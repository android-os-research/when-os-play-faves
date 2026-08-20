.class public Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelperForGeofence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
    }
.end annotation


# static fields
.field private static final CONFIG_KEY:I = 0x3

.field private static final DATABASE_NAME:Ljava/lang/String; = "wifigeofence.db"

.field private static final DBG:Z

.field private static final DEFAULT_GEOLOCATION_VALUE:J = 0x3e8L

.field static final DO_NOT_USE_KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field static final DO_NOT_USE_KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field static final DO_NOT_USE_KEY_TIME:Ljava/lang/String; = "time"

.field private static final INVALID_BSSID:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final KEY_BSSID:Ljava/lang/String; = "bssid"

.field static final KEY_CONFIG_KEY:Ljava/lang/String; = "config_key"

.field static final KEY_ID:Ljava/lang/String; = "_id"

.field static final KEY_LATITUDE_MAJOR:Ljava/lang/String; = "latitude_major"

.field static final KEY_LOCATION_ID:Ljava/lang/String; = "location_id"

.field static final KEY_LONGITUDE_MAJOR:Ljava/lang/String; = "longitude_major"

.field static final KEY_NETWORK_ID:Ljava/lang/String; = "network_id"

.field static final KEY_TIME_MAJOR:Ljava/lang/String; = "time_major"

.field private static final LATITUDE:I = 0x9

.field private static final LOCATION_ID:I = 0x1

.field private static final LONGITUDE:I = 0xa

.field private static final NOT_AVAILABLE:I = -0x1

.field static final TABLE_NAME:Ljava/lang/String; = "geofence_wifi"

.field private static final TAG:Ljava/lang/String; = "WifiGeofenceDBHelper"

.field private static final TIME:I = 0x8

.field private static final mDBVersion:I = 0x4


# direct methods
.method public static synthetic $r8$lambda$IEbs-lGFvGomkOVaURxLWmuXzKs(Ljava/lang/StringBuilder;Ljava/lang/Integer;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->lambda$dump$0(Ljava/lang/StringBuilder;Ljava/lang/Integer;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "wifigeofence.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 70
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE geofence_wifi(_id INTEGER PRIMARY KEY AUTOINCREMENT,location_id INTEGER DEFAULT 0,network_id INTEGER DEFAULT 0,config_key STRING,bssid STRING,time LONG NOT NULL,latitude DOUBLE DEFAULT 1000.0,longitude DOUBLE DEFAULT 1000.0,time_major LONG NOT NULL,latitude_major DOUBLE DEFAULT 1000.0,longitude_major DOUBLE DEFAULT 1000.0)"

    .line 103
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private delete(I)V
    .registers 6

    .line 195
    sget-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    const-string v1, "WifiGeofenceDBHelper"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiGeofenceDBHelper delete - location Id - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_47

    const/4 v0, 0x1

    .line 198
    :try_start_1e
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "geofence_wifi"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_39} :catch_3a

    goto :goto_47

    :catch_3a
    move-exception p0

    const-string p1, "failed to delete"

    .line 201
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-boolean p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_47
    :goto_47
    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "DROP TABLE IF EXISTS geofence_wifi"

    .line 121
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private insert(ILcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 9

    const-string v0, "WifiGeofenceDBHelper"

    const/4 v1, 0x1

    .line 137
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 138
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "location_id"

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "network_id"

    const/4 v3, -0x1

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "config_key"

    .line 141
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bssid"

    const-string v4, "00:00:00:00:00:00"

    .line 142
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    const-wide/16 v4, -0x1

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "latitude"

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "longitude"

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "time_major"

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "latitude_major"

    .line 149
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "longitude_major"

    .line 150
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "geofence_wifi"

    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_79
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_79} :catch_7a

    goto :goto_87

    :catch_7a
    move-exception p0

    const-string v1, "failed to insert"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-boolean v1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    .line 158
    :cond_87
    :goto_87
    sget-boolean p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz p0, :cond_ab

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert() - locationId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", configKey : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return-void
.end method

.method private static synthetic lambda$dump$0(Ljava/lang/StringBuilder;Ljava/lang/Integer;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 4

    const-string v0, "locationId : "

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private select(I)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM geofence_wifi WHERE location_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_1b} :catch_32
    .catchall {:try_start_2 .. :try_end_1b} :catchall_30

    if-eqz p0, :cond_2d

    .line 221
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 222
    invoke-static {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->from(Landroid/database/Cursor;)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    move-result-object p1
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_27} :catch_2b
    .catchall {:try_start_1d .. :try_end_27} :catchall_48

    .line 229
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_2b
    move-exception p1

    goto :goto_34

    :cond_2d
    if-eqz p0, :cond_47

    goto :goto_44

    :catchall_30
    move-exception p1

    goto :goto_4a

    :catch_32
    move-exception p1

    move-object p0, v1

    :goto_34
    :try_start_34
    const-string v0, "WifiGeofenceDBHelper"

    const-string v2, "failed to select"

    .line 225
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_48

    :cond_42
    if-eqz p0, :cond_47

    .line 229
    :goto_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object v1

    :catchall_48
    move-exception p1

    move-object v1, p0

    :goto_4a
    if-eqz v1, :cond_4f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_4f
    throw p1
.end method

.method private selectAll()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "SELECT * FROM geofence_wifi"

    .line 242
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 244
    :goto_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 245
    invoke-static {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->from(Landroid/database/Cursor;)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_28} :catch_31
    .catchall {:try_start_7 .. :try_end_28} :catchall_2f

    goto :goto_13

    :cond_29
    if-eqz v2, :cond_43

    .line 254
    :goto_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_2f
    move-exception p0

    goto :goto_44

    :catch_31
    move-exception p0

    :try_start_32
    const-string v1, "WifiGeofenceDBHelper"

    const-string v3, "failed to selectAll"

    .line 250
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-boolean v1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2f

    :cond_40
    if-eqz v2, :cond_43

    goto :goto_2b

    :cond_43
    :goto_43
    return-object v0

    :goto_44
    if-eqz v2, :cond_49

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_49
    throw p0
.end method

.method private updateLastConnectedTime(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 6

    const/4 v0, 0x1

    .line 164
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    iget v1, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->select(I)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 166
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "time_major"

    .line 167
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "geofence_wifi"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_46

    :catch_37
    move-exception p0

    const-string p1, "WifiGeofenceDBHelper"

    const-string v0, "failed to updateLastConnectedTime"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method private updateLocation(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 6

    const/4 v0, 0x1

    .line 179
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    iget v1, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->select(I)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 181
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "latitude_major"

    .line 182
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "longitude_major"

    .line 183
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "time_major"

    .line 184
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "geofence_wifi"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_5c

    :catch_4d
    move-exception p0

    const-string p1, "WifiGeofenceDBHelper"

    const-string v0, "failed to updateLocation"

    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-boolean p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    const/4 v0, 0x1

    .line 126
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_1b

    :catch_c
    move-exception p0

    const-string v0, "WifiGeofenceDBHelper"

    const-string v1, "failed to clearAll"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-boolean v0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->DBG:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of WifiGeofenceDB :"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->selectAll()Ljava/util/Map;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public load()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->selectAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpgrade() - oldVersion : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newVersion : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "WifiGeofenceDBHelper"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ALTER TABLE geofence_wifi ADD COLUMN longitude_major DOUBLE DEFAULT 1000.0"

    const-string p3, "ALTER TABLE geofence_wifi ADD COLUMN latitude_major DOUBLE DEFAULT 1000.0"

    const-string v0, "ALTER TABLE geofence_wifi ADD COLUMN time_major LONG DEFAULT 0"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3b

    const-string p2, "ALTER TABLE geofence_wifi ADD COLUMN latitude DOUBLE DEFAULT 1000.0"

    .line 82
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE geofence_wifi ADD COLUMN longitude DOUBLE DEFAULT 1000.0"

    .line 83
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_49

    :cond_3b
    if-le p2, v1, :cond_49

    const/4 v1, 0x4

    if-ge p2, v1, :cond_49

    .line 88
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public remove(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 4

    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 211
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->delete(I)V

    return-void
.end method

.method public save(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 4

    .line 265
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 268
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->touch()V

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->select(I)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 270
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->insert(ILcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    goto :goto_2a

    .line 272
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->hasValidLocation()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 273
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->updateLocation(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    goto :goto_2a

    .line 275
    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->updateLastConnectedTime(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    :goto_2a
    return-void
.end method
