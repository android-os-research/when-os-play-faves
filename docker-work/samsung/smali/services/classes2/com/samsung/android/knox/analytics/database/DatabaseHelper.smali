.class public Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final B2C_FEATURE_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

.field public static final B2C_FEATURE_FIELD_FEATURE:Ljava/lang/String; = "feature_name"

.field public static final B2C_FEATURE_FIELD_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final B2C_FEATURE_QUERY:Ljava/lang/String; = "packageName = ?"

.field public static final B2C_FEATURE_TABLE:Ljava/lang/String; = "package_feature_b2c"

.field public static final CLEANED_EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

.field public static final CLEANED_EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

.field public static final CLEANED_EVENTS_TABLE:Ljava/lang/String; = "cleaned_events"

.field public static final COMPRESSED_EVENTS_ADD_BULK_COLUMN:Ljava/lang/String; = "ALTER TABLE compressed_events ADD bulk INTEGER DEFAULT 1000"

.field public static final COMPRESSED_EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

.field public static final COMPRESSED_EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM compressed_events ORDER BY + id LIMIT ?)"

.field public static final COMPRESSED_EVENTS_FIELD_BULK:Ljava/lang/String; = "bulk"

.field public static final COMPRESSED_EVENTS_FIELD_CONTENT:Ljava/lang/String; = "content"

.field public static final COMPRESSED_EVENTS_FIELD_ID:Ljava/lang/String; = "id"

.field public static final COMPRESSED_EVENTS_FIELD_LENGTH:Ljava/lang/String; = "length"

.field public static final COMPRESSED_EVENTS_FIELD_ORIGINAL_LENGTH:Ljava/lang/String; = "original_length"

.field public static final COMPRESSED_EVENTS_KEY_PLAIN_EVENTS_SIZE:Ljava/lang/String; = "plainEventsSize"

.field public static final COMPRESSED_EVENTS_TABLE:Ljava/lang/String; = "compressed_events"

.field public static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field public static final DATABASE_VERSION:I = 0x8

.field public static final EVENTS_ADD_BULK_COLUMN:Ljava/lang/String; = "ALTER TABLE events ADD bulk INTEGER DEFAULT 1"

.field public static final EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

.field public static final EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

.field public static final EVENTS_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field public static final EVENTS_FIELD_BULK:Ljava/lang/String; = "bulk"

.field public static final EVENTS_FIELD_DATA:Ljava/lang/String; = "data"

.field public static final EVENTS_FIELD_ID:Ljava/lang/String; = "id"

.field public static final EVENTS_FIELD_VID:Ljava/lang/String; = "vid"

.field public static final EVENTS_TABLE:Ljava/lang/String; = "events"

.field public static final FEATURES_BLACKLIST_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

.field public static final FEATURES_BLACKLIST_DELETE:Ljava/lang/String; = "feature = ?"

.field public static final FEATURES_BLACKLIST_FIELD_DISABLE:Ljava/lang/String; = "disable_type"

.field public static final FEATURES_BLACKLIST_FIELD_FEATURE:Ljava/lang/String; = "feature"

.field public static final FEATURES_BLACKLIST_TABLE:Ljava/lang/String; = "features_blacklist"

.field public static final FEATURES_WHITELIST_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

.field public static final FEATURES_WHITELIST_DELETE:Ljava/lang/String; = "feature = ?"

.field public static final FEATURES_WHITELIST_FIELD_ENABLE:Ljava/lang/String; = "enable_type"

.field public static final FEATURES_WHITELIST_FIELD_FEATURE:Ljava/lang/String; = "feature"

.field public static final FEATURES_WHITELIST_TABLE:Ljava/lang/String; = "features_whitelist"

.field public static final LAST_EVENT_ID_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE internal_data ( last_event_id INTEGER )"

.field public static final LAST_EVENT_ID_FIELD:Ljava/lang/String; = "last_event_id"

.field public static final LAST_EVENT_ID_TABLE:Ljava/lang/String; = "internal_data"

.field public static final SYNTHETIC_KEY_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE synthetic_key ( row_id INTEGER)"

.field public static final SYNTHETIC_KEY_TABLE:Ljava/lang/String; = "synthetic_key"

.field public static final SYNTHETIC_ROW_ID:Ljava/lang/String; = "row_id"

.field public static final TAG:Ljava/lang/String;

.field public static final VERSIONING_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

.field public static final VERSIONING_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field public static final VERSIONING_FIELD_DATA:Ljava/lang/String; = "data"

.field public static final VERSIONING_FIELD_ID:Ljava/lang/String; = "id"

.field public static final VERSIONING_TABLE:Ljava/lang/String; = "version"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "analytics.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 124
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 125
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addB2CFeatures(Landroid/content/ContentValues;)J
    .registers 5

    .line 762
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    .line 763
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "feature_name"

    .line 764
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 765
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 766
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_32

    .line 770
    :cond_25
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "package_feature_b2c"

    .line 771
    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    :cond_32
    :goto_32
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public addEvent(Landroid/content/ContentValues;I)J
    .registers 10

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->isContentValuesValid(Landroid/content/ContentValues;I)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_10

    .line 216
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "addEvent() : Invalid content values"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 220
    :cond_10
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addEvent()"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 222
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 223
    array-length v5, v4

    if-lez v5, :cond_57

    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-eqz v6, :cond_57

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_57

    :cond_30
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3d

    const-string p2, "bulk"

    .line 230
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 232
    :cond_3d
    aget-object p2, v4, v5

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long v1, p1, v1

    if-nez v1, :cond_4e

    const-string p0, "addEvent(): Couldn\'t add event"

    .line 234
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_4e
    int-to-long v0, v6

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    :goto_56
    return-wide p1

    :cond_57
    :goto_57
    const-string p0, "addEvent(): Wrong log type"

    .line 224
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public addFeaturesBlacklist(Landroid/content/ContentValues;)J
    .registers 5

    .line 581
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "disable_type"

    .line 582
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 583
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1d

    :cond_15
    const/4 v2, 0x0

    .line 585
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1d
    const-string v1, "feature"

    .line 587
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 588
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 589
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 590
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3d

    goto :goto_49

    .line 594
    :cond_3d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "features_blacklist"

    .line 595
    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    :cond_49
    :goto_49
    const-string p0, "addFeaturesBlacklist(): missing feature field!"

    .line 591
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public addFeaturesWhitelist(Landroid/content/ContentValues;)J
    .registers 5

    .line 709
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 710
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 711
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 712
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 713
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    goto :goto_49

    :cond_27
    const-string v0, "enable_type"

    .line 717
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 718
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3d

    :cond_35
    const/4 v1, 0x1

    .line 720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    :cond_3d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "features_whitelist"

    .line 723
    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0

    :cond_49
    :goto_49
    const-string p0, "addFeaturesWhitelist(): missing feature field!"

    .line 714
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public addVersioningBlob(Landroid/content/ContentValues;)I
    .registers 11

    .line 543
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eqz p1, :cond_68

    const-string v2, "id"

    .line 545
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "data"

    .line 546
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "eventId"

    .line 547
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 548
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2a

    goto :goto_68

    .line 552
    :cond_2a
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_36

    const-string p0, "addVersioningBlob(): versioning id is null!"

    .line 554
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 557
    :cond_36
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_4e

    .line 560
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v7, 0x0

    const-string/jumbo v8, "version"

    .line 562
    invoke-virtual {v3, v8, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    goto :goto_4f

    :cond_4e
    move-wide v7, v5

    :goto_4f
    if-eqz v4, :cond_62

    cmp-long p1, v7, v5

    if-nez p1, :cond_56

    goto :goto_62

    .line 569
    :cond_56
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    .line 571
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_62
    :goto_62
    const-string p0, "addVersioningBlob(): error"

    .line 566
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_68
    :goto_68
    const-string p0, "addVersioningBlob(): wrong fields!"

    .line 549
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public deleteAllEvents()J
    .registers 3

    .line 469
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteAllEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "events"

    const/4 v1, 0x0

    .line 471
    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public deleteB2CFeatures([Ljava/lang/String;)J
    .registers 4

    .line 790
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p1, :cond_1d

    .line 792
    array-length v0, p1

    if-nez v0, :cond_11

    goto :goto_1d

    :cond_11
    const-string/jumbo v0, "package_feature_b2c"

    const-string/jumbo v1, "packageName = ?"

    .line 795
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1d
    :goto_1d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public deleteCompressedEventChunk(J)J
    .registers 7

    .line 665
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCompressedEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_27

    const-string p0, "deleteCompressedEventChunk(): invalid number"

    .line 667
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 670
    :cond_27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 671
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "compressed_events"

    const-string p2, "id IN (SELECT id FROM compressed_events ORDER BY + id LIMIT ?)"

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public deleteEventChunk(JI)J
    .registers 9

    .line 437
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    cmp-long v1, p1, v1

    if-gez v1, :cond_29

    const-string p0, "deleteEventChunk(): invalid number"

    .line 439
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    .line 442
    :cond_29
    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_61

    .line 443
    array-length v1, p3

    if-lez v1, :cond_61

    const/4 v1, 0x0

    aget-object v2, p3, v1

    if-eqz v2, :cond_61

    const/4 v3, 0x1

    aget-object v4, p3, v3

    if-eqz v4, :cond_61

    .line 444
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_61

    .line 448
    :cond_4b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 449
    aget-object v0, p3, v1

    aget-object p3, p3, v3

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_61
    :goto_61
    const-string p0, "deleteEventChunk(): Wrong log type"

    .line 445
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public deleteEventsUpToSyntheticId()V
    .registers 6

    .line 453
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getSyntheticRowId()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_13

    .line 456
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "deleteEventsUpToSyntheticId(): No legacy content"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 459
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "events"

    const-string v4, "id <= ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_5e

    .line 461
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEventsUpToSyntheticId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events, up to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "have been deleted"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "row_id"

    const-string v2, "-1"

    .line 463
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "synthetic_key"

    const/4 v2, 0x0

    .line 464
    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public deleteFeatureBlacklist(Ljava/lang/String;)J
    .registers 4

    .line 625
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p1, :cond_24

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_24

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "features_blacklist"

    const-string v1, "feature = ?"

    .line 630
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_24
    :goto_24
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public deleteFeatureWhitelist(Ljava/lang/String;)J
    .registers 4

    .line 753
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p1, :cond_24

    .line 755
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_24

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "features_whitelist"

    const-string v1, "feature = ?"

    .line 758
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_24
    :goto_24
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public deleteFeaturesBlacklist([Ljava/lang/String;)J
    .registers 8

    .line 610
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 612
    array-length v0, p1

    if-nez v0, :cond_d

    goto :goto_1e

    .line 618
    :cond_d
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v4, p1, v1

    .line 619
    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureBlacklist(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    return-wide v2

    .line 613
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "features_blacklist"

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, p1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public deleteFeaturesWhitelist([Ljava/lang/String;)J
    .registers 8

    .line 738
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    .line 740
    array-length v0, p1

    if-nez v0, :cond_d

    goto :goto_1e

    .line 746
    :cond_d
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v4, p1, v1

    .line 747
    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureWhitelist(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    return-wide v2

    .line 741
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "features_whitelist"

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0, p1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public deleteFromVersion(J)J
    .registers 5

    .line 575
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 577
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string/jumbo p1, "version"

    const-string p2, "id <= ?"

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public deleteUpTo(J)J
    .registers 6

    .line 475
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUpTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 477
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "events"

    const-string p2, "id <= ?"

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getB2CFeatures([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 775
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz p1, :cond_14

    .line 778
    array-length p0, p1

    if-lez p0, :cond_14

    const-string/jumbo p0, "packageName = ?"

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    move-object v5, p0

    const-string/jumbo p0, "packageName"

    const-string v0, "feature_name"

    .line 781
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v3, "package_feature_b2c"

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 783
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_35

    .line 784
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_35
    return-object p0
.end method

.method public getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 11

    .line 519
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCleanedEventsCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 522
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    move-object v8, p1

    .line 524
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "id"

    const-string/jumbo p1, "vid"

    const-string v1, "data"

    .line 525
    filled-new-array {p0, p1, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "cleaned_events"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 528
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_35

    .line 529
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_35
    return-object p0
.end method

.method public getCompressedEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 13

    .line 343
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCompressedEventChunk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz p1, :cond_14

    .line 347
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    goto :goto_15

    :cond_14
    move-object v10, p0

    :goto_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "compressed_events"

    const-string v9, "id ASC"

    .line 349
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 351
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object p1

    :cond_2c
    :goto_2c
    const-string v1, "getCompressedEventChunk(): There is no compressed data"

    .line 352
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_36

    .line 354
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object p0
.end method

.method public getCompressedEventCountValue()J
    .registers 3

    .line 393
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "compressed_events"

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDatabaseSizeCursor()Landroid/database/Cursor;
    .registers 5

    .line 487
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentDatabaseSizeCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "databaseSize"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p0

    if-lez p0, :cond_2c

    .line 491
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_2c
    return-object v0
.end method

.method public getCurrentDatabaseSizeInBytes()J
    .registers 3

    .line 481
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentDatabaseSizeInBytes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "analytics.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentVersioningId()Landroid/database/Cursor;
    .registers 9

    .line 497
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "id"

    .line 498
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "version"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 502
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    .line 503
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_21
    return-object p0
.end method

.method public getCurrentVersioningIdInternal()I
    .registers 3

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentVersioningId()Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_22

    .line 511
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_22

    const-string v0, "id"

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_22

    :catchall_18
    move-exception v0

    .line 509
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v0

    :cond_22
    :goto_22
    if-eqz p0, :cond_27

    .line 515
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_27
    return v0
.end method

.method public getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 14

    .line 260
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getEventChunk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "id"

    const-string/jumbo v0, "vid"

    const-string v1, "bulk"

    const-string v11, "data"

    .line 263
    filled-new-array {p0, v0, v1, v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez p1, :cond_27

    return-object v2

    .line 271
    :cond_27
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {p0, v0, v1, v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    if-eqz v2, :cond_86

    .line 278
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_86

    .line 279
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 280
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 281
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 282
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    .line 284
    :goto_4b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 285
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v7, v9, :cond_5d

    goto :goto_86

    :cond_5d
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 291
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    .line 292
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x2

    .line 293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v10

    const/4 v8, 0x3

    .line 294
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    aput-object v10, v9, v8

    .line 290
    invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4b

    :cond_86
    :goto_86
    if-eqz v2, :cond_8b

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8b
    return-object v3
.end method

.method public getEventCount()Landroid/database/Cursor;
    .registers 5

    .line 336
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEventCountCursor()Landroid/database/Cursor;
    .registers 10

    .line 381
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "bulk"

    .line 382
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 383
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-object p0

    :cond_20
    :goto_20
    if-eqz p0, :cond_25

    .line 385
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEventCountValue()J
    .registers 4

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_29

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 366
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_e

    goto :goto_22

    :cond_e
    move v1, v0

    .line 369
    :goto_f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 370
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_20

    add-int/2addr v1, v2

    goto :goto_f

    .line 374
    :cond_1b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    int-to-long v0, v1

    return-wide v0

    :catchall_20
    move-exception v0

    goto :goto_2b

    :cond_22
    :goto_22
    int-to-long v0, v0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-wide v0

    :catchall_29
    move-exception v0

    const/4 p0, 0x0

    :goto_2b
    if-eqz p0, :cond_30

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_30
    throw v0
.end method

.method public getFeaturesBlacklist()Landroid/database/Cursor;
    .registers 11

    .line 599
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "feature"

    const-string v0, "disable_type"

    .line 601
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "features_blacklist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 603
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 604
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_29
    return-object p0
.end method

.method public getFeaturesWhitelist()Landroid/database/Cursor;
    .registers 11

    .line 727
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "feature"

    const-string v0, "enable_type"

    .line 729
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "features_whitelist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 731
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 732
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_29
    return-object p0
.end method

.method public getLastId()Landroid/database/Cursor;
    .registers 11

    .line 306
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "last_event_id"

    .line 308
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "internal_data"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 311
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_27

    .line 312
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_27
    return-object p0
.end method

.method public getSyntheticRowId()I
    .registers 9

    .line 635
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "row_id"

    .line 636
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "synthetic_key"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 638
    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_20

    goto :goto_45

    .line 642
    :cond_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 643
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 644
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSyntheticRowId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_53

    .line 645
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p0

    .line 639
    :cond_45
    :goto_45
    :try_start_45
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getSyntheticRowId(): Key is deleted or it is not generated yet."

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_53

    const/4 p0, -0x1

    if-eqz v0, :cond_52

    .line 645
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_52
    return p0

    :catchall_53
    move-exception p0

    if-eqz v0, :cond_5e

    .line 636
    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw p0
.end method

.method public final getTableAndWhereClauseFromType(I)[Ljava/lang/String;
    .registers 4

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1a

    if-eq p1, v1, :cond_11

    .line 253
    sget-object p1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "getTableAndWhereClauseFromType(): Unknown table"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_11
    const-string p1, "events"

    aput-object p1, p0, v0

    const-string p1, "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

    aput-object p1, p0, v1

    goto :goto_22

    :cond_1a
    const-string p1, "cleaned_events"

    aput-object p1, p0, v0

    const-string p1, "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

    aput-object p1, p0, v1

    :goto_22
    return-object p0
.end method

.method public getTotalCompressedEvent(Ljava/lang/Integer;)I
    .registers 4

    .line 397
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getTotalCompressedEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_32

    .line 402
    :cond_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    move p1, v0

    .line 408
    :goto_1d
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 409
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2d

    add-int/2addr p1, v1

    goto :goto_1d

    .line 412
    :cond_29
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_2d
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 413
    throw p1

    :cond_32
    :goto_32
    return v0
.end method

.method public getTotalCompressedEventCursor()Landroid/database/Cursor;
    .registers 2

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getTotalCompressedEventCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 422
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalCompressedEventCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string p0, "bulk"

    .line 424
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "compressed_events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 426
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-gtz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    return-object p0

    :cond_3b
    :goto_3b
    const-string p1, "getTotalCompressedEventCursor(): There is no compressed events"

    .line 427
    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_45

    .line 429
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersioningBlob()Landroid/database/Cursor;
    .registers 9

    .line 535
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "data"

    const-string v1, "id"

    .line 536
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "version"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final isContentValuesValid(Landroid/content/ContentValues;I)Z
    .registers 5

    const-string p0, "id"

    .line 188
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_72

    const-string/jumbo p0, "vid"

    .line 189
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_72

    const-string p0, "data"

    .line 190
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 191
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_72

    :cond_37
    const/4 p0, 0x1

    if-nez p2, :cond_49

    .line 196
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_61

    .line 197
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "Wrong fields! Invalid clean event"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_49
    if-ne p2, p0, :cond_6a

    const-string p2, "bulk"

    .line 201
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 202
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 203
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_61

    goto :goto_62

    :cond_61
    return p0

    .line 204
    :cond_62
    :goto_62
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "Wrong fields! Invalid event"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 208
    :cond_6a
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "Unknown table"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 192
    :cond_72
    :goto_72
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p1, "Wrong fields! Missing id/vid/data"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 131
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "PRAGMA journal_mode = OFF;"

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 134
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

    .line 140
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    .line 141
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

    .line 142
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    .line 143
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    .line 144
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE synthetic_key ( row_id INTEGER)"

    .line 145
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

    .line 146
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

    .line 147
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

    .line 148
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    .line 154
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string p3, "oldVersion=%d, newVersion=%d"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, v1, :cond_3c

    const-string p3, "DROP TABLE IF EXISTS events"

    .line 157
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS version"

    .line 158
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS features_blacklist"

    .line 159
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, bulk INTEGER DEFAULT 1, data BLOB )"

    .line 160
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    .line 161
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

    .line 162
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3c
    const/4 p3, 0x3

    if-ge p2, p3, :cond_47

    const-string p3, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    .line 165
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_47
    const/4 p0, 0x4

    if-ge p2, p0, :cond_4f

    const-string p0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    .line 169
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4f
    const/4 p0, 0x5

    if-ge p2, p0, :cond_57

    const-string p0, "CREATE TABLE synthetic_key ( row_id INTEGER)"

    .line 172
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_57
    const/4 p0, 0x6

    if-ge p2, p0, :cond_5f

    const-string p0, "CREATE TABLE compressed_events ( id INTEGER PRIMARY KEY, length INTEGER, original_length INTEGER, bulk INTEGER DEFAULT 1000, content BLOB )"

    .line 175
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5f
    const/4 p0, 0x7

    if-ge p2, p0, :cond_6c

    const-string p0, "CREATE TABLE features_whitelist ( feature TEXT PRIMARY KEY, enable_type INTEGER)"

    .line 178
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE package_feature_b2c ( packageName TEXT PRIMARY KEY, feature_name TEXT)"

    .line 179
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6c
    const/16 p0, 0x8

    if-ge p2, p0, :cond_7a

    const-string p0, "ALTER TABLE events ADD bulk INTEGER DEFAULT 1"

    .line 182
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE compressed_events ADD bulk INTEGER DEFAULT 1000"

    .line 183
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public performCompressedEventsTransaction(Landroid/content/ContentValues;)Z
    .registers 10

    .line 675
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCompressedEventsTransaction()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    .line 677
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ba

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    const-string v1, "length"

    .line 678
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_ba

    const-string/jumbo v1, "original_length"

    .line 679
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_ba

    const-string/jumbo v1, "plainEventsSize"

    .line 680
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_ba

    const-string v2, "bulk"

    .line 681
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 682
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5d

    goto :goto_ba

    .line 686
    :cond_5d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 687
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 688
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    :try_start_70
    const-string v2, "compressed_events"

    const/4 v4, 0x0

    .line 691
    invoke-virtual {p0, v2, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_9f

    const-string p1, "events"

    const-string v2, "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

    new-array v4, v1, [Ljava/lang/String;

    .line 694
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_97

    .line 697
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_70 .. :try_end_92} :catch_a9
    .catchall {:try_start_70 .. :try_end_92} :catchall_a7

    .line 703
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v1

    goto :goto_b5

    .line 695
    :cond_97
    :try_start_97
    new-instance p1, Landroid/database/SQLException;

    const-string v0, "Transaction Failure. Not possible to delete plain-text events."

    invoke-direct {p1, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_9f
    new-instance p1, Landroid/database/SQLException;

    const-string v0, "Transaction Failure. Not possible to insert compressed events."

    invoke-direct {p1, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a7
    .catch Landroid/database/SQLException; {:try_start_97 .. :try_end_a7} :catch_a9
    .catchall {:try_start_97 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception p1

    goto :goto_b6

    :catch_a9
    move-exception p1

    .line 700
    :try_start_aa
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCompressedEventsTransaction(): "

    invoke-static {v0, v1, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_a7

    .line 703
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_b5
    return v3

    :goto_b6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 704
    throw p1

    :cond_ba
    :goto_ba
    const-string/jumbo p0, "performCompressedEventsTransaction(): wrong fields!"

    .line 683
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 326
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "putLastIdDefaultValue()"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "last_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "internal_data"

    const/4 v2, 0x0

    .line 329
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2a

    const-string/jumbo p1, "putLastIdDefaultValue(): Error"

    .line 331
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public setSyntheticRowId()V
    .registers 6

    .line 650
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSyntheticRowId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 652
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getLastId()Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 654
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1e

    goto :goto_55

    :cond_1e
    const-string/jumbo v3, "row_id"

    const-string v4, "last_event_id"

    .line 658
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "synthetic_key"

    const/4 v4, 0x0

    .line 659
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyntheticRowId(): Marked event id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_53

    .line 661
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_53
    move-exception v0

    goto :goto_61

    :cond_55
    :goto_55
    :try_start_55
    const-string/jumbo v1, "setSyntheticRowId(): There is no data in events table."

    .line 655
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_53

    if-eqz p0, :cond_60

    .line 661
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_60
    return-void

    :goto_61
    if-eqz p0, :cond_6b

    .line 653
    :try_start_63
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    throw v0
.end method

.method public final updateLastId(J)V
    .registers 6

    .line 318
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 321
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_event_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "internal_data"

    const/4 p2, 0x0

    .line 322
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
