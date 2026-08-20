.class public Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WatchlistReportDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;,
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$WhiteListReportContract;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_MODEL:Ljava/lang/String; = "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

.field public static final DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

.field public static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field public static final INDEX_CNC_DOMAIN:I = 0x1

.field public static final INDEX_DIGEST:I = 0x0

.field public static final INDEX_TIMESTAMP:I = 0x2

.field public static final NAME:Ljava/lang/String; = "watchlist_report.db"

.field public static final TAG:Ljava/lang/String; = "WatchlistReportDbHelper"

.field public static final VERSION:I = 0x2

.field public static sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "app_digest"

    const-string v1, "cnc_domain"

    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 101
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getSystemWatchlistDbFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x7530

    .line 103
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    .registers 3

    const-class v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    monitor-enter v0

    .line 107
    :try_start_3
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-eqz v1, :cond_9

    .line 108
    monitor-exit v0

    return-object v1

    .line 110
    :cond_9
    :try_start_9
    new-instance v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    .line 111
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSystemWatchlistDbFile()Ljava/io/File;
    .registers 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_report.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cleanup(J)Z
    .registers 5

    .line 189
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timestamp< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "records"

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .registers 15

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const/4 p0, 0x0

    :try_start_6
    const-string/jumbo v2, "records"

    .line 154
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "timestamp < ?"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 154
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_56

    if-nez p1, :cond_28

    if-eqz p1, :cond_27

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_27
    return-object p0

    .line 161
    :cond_28
    :try_start_28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    :goto_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 166
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 175
    :cond_4b
    new-instance p2, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    invoke-direct {p2, v0, p0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_54

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_54
    move-exception p0

    goto :goto_5a

    :catchall_56
    move-exception p1

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :goto_5a
    if-eqz p1, :cond_5f

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_5f
    throw p0
.end method

.method public insertNewRecord([BLjava/lang/String;J)Z
    .registers 7

    .line 135
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_digest"

    .line 137
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "cnc_domain"

    .line 138
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p1, "records"

    const/4 p2, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

    .line 116
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS records"

    .line 122
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
