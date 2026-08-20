.class public Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
.super Ljava/lang/Object;
.source "DatabaseCryptoAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field public final mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field public mVersioningCompleted:Z

.field public final mVersioningCompletedLock:Ljava/lang/Object;

.field public mVersioningIdCache:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    .line 37
    new-instance v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateKeys()V

    return-void
.end method


# virtual methods
.method public addB2CFeatures(Landroid/content/ContentValues;)J
    .registers 4

    .line 548
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addB2CFeatures(Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public addBulkEvents(Landroid/os/Bundle;)J
    .registers 7

    .line 97
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addBulkEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "eventsList"

    .line 99
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_57

    .line 106
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBulk(Ljava/util/List;)[B

    move-result-object v0

    .line 108
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data"

    .line 110
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bulk"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    .line 114
    iget p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "vid"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0

    :cond_57
    :goto_57
    const-string p0, "addBulkEvents(): eventList is invalid"

    .line 102
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public addCleanedEvent(Landroid/content/ContentValues;)J
    .registers 4

    .line 120
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addCleanedEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    .line 122
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public addEvent(Landroid/content/ContentValues;)J
    .registers 6

    .line 85
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 87
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bulk"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    .line 92
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vid"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public addFeatureBlacklist(Landroid/content/ContentValues;)J
    .registers 9

    .line 390
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 396
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v4, "addFeatureBlacklist(): null value"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 399
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    .line 401
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureBlacklist(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4e

    .line 403
    :cond_39
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "feature"

    .line 404
    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "disable_type"

    .line 405
    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addFeaturesBlacklist(Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_4e
    add-long/2addr v1, v3

    goto :goto_11

    :cond_50
    return-wide v1
.end method

.method public addFeatureWhitelist(Landroid/content/ContentValues;)J
    .registers 9

    .line 515
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 519
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 521
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v4, "addFeatureWhitelist(): null value"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 524
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    .line 526
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureWhitelist(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4e

    .line 528
    :cond_39
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "feature"

    .line 529
    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "enable_type"

    .line 530
    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addFeaturesWhitelist(Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_4e
    add-long/2addr v1, v3

    goto :goto_11

    :cond_50
    return-wide v1
.end method

.method public addVersioningBlob(Landroid/content/ContentValues;)I
    .registers 4

    .line 357
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addVersioning()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_11

    return v0

    .line 362
    :cond_11
    iput p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    return p1
.end method

.method public final calculateRemainingEventsForDelete(II)I
    .registers 7

    sub-int v0, p1, p2

    .line 301
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateRemainingEventsForDelete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): totalToDelete: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_54

    .line 306
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gtz p2, :cond_38

    goto :goto_54

    :cond_38
    move p2, p1

    move v1, p2

    .line 309
    :goto_3a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 310
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_4f

    add-int/2addr p2, v2

    if-le p2, v0, :cond_48

    goto :goto_4b

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 318
    :cond_4b
    :goto_4b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_4f
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 320
    throw p1

    :cond_54
    :goto_54
    if-eqz p0, :cond_59

    .line 318
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_59
    return p1
.end method

.method public final checkCompressedChunksLimit(J)I
    .registers 8

    .line 275
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCompressedChunksLimit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_52

    .line 279
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEventCursor()Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 281
    :try_start_2a
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4d

    move v0, v1

    move v2, v0

    .line 282
    :goto_32
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 283
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_48

    add-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_43

    goto :goto_46

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_46
    :goto_46
    move v1, v2

    goto :goto_4d

    :catchall_48
    move-exception p1

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 294
    throw p1

    :cond_4d
    :goto_4d
    if-eqz p0, :cond_52

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_52
    return v1
.end method

.method public final createCursor(Ljava/util/List;)Landroid/database/Cursor;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/ZipResult;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 446
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "id"

    const-string/jumbo v2, "vid"

    const-string v3, "bulk"

    const-string v4, "data"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 451
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/analytics/util/ZipResult;

    .line 452
    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventsList(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 453
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_30

    goto :goto_79

    :cond_30
    const/4 v7, 0x0

    move v8, v7

    .line 457
    :goto_32
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_17

    .line 459
    :try_start_38
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 460
    new-instance v10, Lcom/samsung/android/knox/analytics/model/Event;

    invoke-direct {v10, v9}, Lcom/samsung/android/knox/analytics/model/Event;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 462
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v7

    .line 463
    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v6

    const/4 v11, 0x2

    .line 464
    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    .line 465
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 461
    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception v9

    .line 467
    sget-object v10, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v11, "createCursor(): Parsing error object."

    invoke-static {v10, v11, v9}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 454
    :cond_79
    :goto_79
    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v7, "createCursor(): Null events received"

    invoke-static {v5, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_81
    return-object v0
.end method

.method public final createCursorOnlyWithCompressedEvents(I)Landroid/database/Cursor;
    .registers 4

    .line 206
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createCursorOnlyWithCompressedEvents(): query only compressed events"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 208
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-gtz p1, :cond_18

    goto :goto_24

    .line 214
    :cond_18
    new-instance p1, Landroid/database/MergeCursor;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-direct {p1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object p1

    :cond_24
    :goto_24
    if-eqz p0, :cond_29

    .line 210
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createCursorWithAllEvents()Landroid/database/Cursor;
    .registers 7

    .line 218
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createCursorWithAllEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_15

    goto :goto_2d

    .line 226
    :cond_15
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    new-instance v4, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v4, v5, p0, v0}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v2

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_32

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_32
    return-object v0
.end method

.method public final createCursorWithEventsSizeSpecified(II)Landroid/database/Cursor;
    .registers 7

    .line 192
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCursorWithEventsSizeSpecified(): query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_48

    .line 194
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2c

    goto :goto_48

    .line 200
    :cond_2c
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    new-instance v2, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v3, p0, p1}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    aput-object v2, v1, p2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0

    :cond_48
    :goto_48
    if-eqz p2, :cond_4d

    .line 196
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createMergedCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 7

    .line 149
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMergedCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_22

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorWithAllEvents()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 153
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->checkCompressedChunksLimit(J)I

    move-result v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v2

    .line 155
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalPlainEvents(II)I

    move-result p1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCursorWith: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " compressed events and "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " plain events"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5f

    .line 161
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorOnlyWithCompressedEvents(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 163
    :cond_5f
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursorWithEventsSizeSpecified(II)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public deleteB2CFeatures([Ljava/lang/String;)J
    .registers 4

    .line 558
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteB2CFeatures([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteCleanedEventChunk(J)J
    .registers 4

    .line 330
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteCompressedEventChunk(J)J
    .registers 6

    .line 325
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCompressedEventChunk(size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteCompressedEventChunk(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteEventChunk(JI)J
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteEventChunk(JJI)J
    .registers 9

    .line 235
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk(size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_30

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 240
    :cond_2b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteMergedChunk(JJ)J

    move-result-wide p0

    return-wide p0

    .line 238
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteCleanedEventChunk(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteFeatureBlacklist([Ljava/lang/String;)J
    .registers 4

    .line 491
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesBlacklist([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteFeatureWhitelist([Ljava/lang/String;)J
    .registers 4

    .line 543
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesWhitelist([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public deleteFromVersion(J)J
    .registers 5

    .line 385
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFromVersion(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deleteMergedChunk(JJ)J
    .registers 14

    .line 247
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMergedChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gtz v1, :cond_37

    .line 250
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide p0

    return-wide p0

    .line 253
    :cond_37
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->checkCompressedChunksLimit(J)I

    move-result v1

    .line 254
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v5

    .line 256
    iget-object v6, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteCompressedEventChunk(J)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_50

    const-string p0, "deleteMergedChunk(): Some error occurred when deleting."

    .line 258
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_50
    long-to-int p3, p3

    .line 261
    invoke-virtual {p0, p3, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->calculateRemainingEventsForDelete(II)I

    move-result p3

    int-to-long p3, p3

    cmp-long v0, p3, v3

    if-nez v0, :cond_5b

    return-wide p1

    :cond_5b
    sub-long/2addr p1, p3

    .line 266
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p3, p4, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide p3

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public deleteUntilTargetDbSize(J)J
    .registers 5

    .line 339
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUntilTargetDbSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public deleteUpTo(J)J
    .registers 6

    .line 334
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

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

    .line 335
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteUpTo(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final generateCBCKey()V
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateCBCKey()V

    return-void
.end method

.method public final generateGCMKey()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->isGCMKeyGenerated()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v0, "generateGCMKey(): Key already generated"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateGCMKey()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 56
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey(): Key generated"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->markEventIdOnKeyGeneration()V

    :cond_22
    return-void
.end method

.method public final generateKeys()V
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateGCMKey()V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->generateCBCKey()V

    return-void
.end method

.method public getB2CFeaturesCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 553
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getB2CFeatures([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 2

    .line 504
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCompressedEvents(Ljava/lang/Integer;)Landroid/database/Cursor;
    .registers 8

    .line 417
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getCompressedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_1a

    const-string p0, "There is no compressed data to be queried"

    .line 419
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 422
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    :try_start_1f
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_25
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f .. :try_end_25} :catch_83

    if-eqz p1, :cond_7d

    .line 424
    :try_start_27
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2e

    goto :goto_7d

    .line 427
    :cond_2e
    :goto_2e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "content"

    .line 428
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 429
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBlob([B)[B

    move-result-object v1

    const-string v3, "length"

    .line 431
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "original_length"

    .line 432
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v3, v5, :cond_62

    if-ne v4, v5, :cond_62

    .line 433
    array-length v5, v1

    if-gtz v5, :cond_62

    goto :goto_2e

    .line 436
    :cond_62
    new-instance v5, Lcom/samsung/android/knox/analytics/util/ZipResult;

    invoke-direct {v5, v1, v3, v4}, Lcom/samsung/android/knox/analytics/util/ZipResult;-><init>([BII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 438
    :cond_6b
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_27 .. :try_end_6f} :catchall_73

    .line 439
    :try_start_6f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/security/GeneralSecurityException; {:try_start_6f .. :try_end_72} :catch_83

    return-object p0

    :catchall_73
    move-exception p0

    .line 423
    :try_start_74
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p1

    :try_start_79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0

    :cond_7d
    :goto_7d
    if-eqz p1, :cond_82

    .line 439
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Ljava/security/GeneralSecurityException; {:try_start_79 .. :try_end_82} :catch_83

    :cond_82
    return-object v2

    :catch_83
    move-exception p0

    .line 440
    sget-object p1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v0, "getCompressedEvents(): "

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public getCompressedEventsCount()J
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCompressedEventCountValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatabaseSizeCursor()Landroid/database/Cursor;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getDatabaseSizeInBytes()J
    .registers 3

    .line 500
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;
    .registers 7

    .line 141
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_34

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEventsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_34

    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->createMergedCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 145
    :cond_34
    new-instance p2, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {p2, v0, p0, p1}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V

    return-object p2
.end method

.method public getEventCount()Landroid/database/Cursor;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCount()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getEventCountValue()J
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEventsList(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;
    .registers 2

    .line 476
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/ZipHandler;->inflate(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_d
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 480
    :catch_5
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string p1, "getEventsList(): Data is malformed"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 478
    :catch_d
    sget-object p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string p1, "getEventsList(): Parsing error"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatureBlacklistCursor()Landroid/database/Cursor;
    .registers 3

    .line 486
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getFeatureBlacklistCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getFeaturesBlacklist()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureWhitelistCursor()Landroid/database/Cursor;
    .registers 3

    .line 538
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getFeatureWhitelistCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getFeaturesWhitelist()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getLastId()Landroid/database/Cursor;
    .registers 3

    .line 344
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getLastId()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getTotalCompressedEvents(I)I
    .registers 5

    .line 270
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalCompressedEvents("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTotalCompressedEvent(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public final getTotalPlainEvents(II)I
    .registers 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    .line 171
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountCursor()Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    :cond_d
    move v1, v0

    .line 177
    :goto_e
    :try_start_e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 178
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_22

    add-int/2addr p2, v2

    if-le p2, p1, :cond_1c

    goto :goto_1e

    :cond_1c
    add-int/2addr v1, v2

    goto :goto_e

    .line 186
    :cond_1e
    :goto_1e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_22
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 187
    throw p1
.end method

.method public getVersioningBlob()Landroid/database/Cursor;
    .registers 3

    .line 367
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->updateVersioningCache(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public final markEventIdOnKeyGeneration()V
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->setSyntheticRowId()V

    return-void
.end method

.method public notifyVersioningCompleted()V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 509
    :try_start_4
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    .line 510
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 511
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public performCompressedEventsTransaction(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 66
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performCompressedEventsTransaction()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "performCompressedEventsTransaction(): Null argument. Aborting"

    if-eqz p1, :cond_4b

    .line 67
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_4b

    :cond_15
    const-string v3, "cv"

    .line 71
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    if-eqz p1, :cond_47

    .line 72
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-gtz v3, :cond_26

    goto :goto_47

    .line 76
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBlob([B)[B

    move-result-object v0

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->performCompressedEventsTransaction(Landroid/content/ContentValues;)Z

    move-result p0

    .line 79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "performCompressedEventsTransaction"

    .line 80
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    .line 73
    :cond_47
    :goto_47
    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 68
    :cond_4b
    :goto_4b
    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final updateVersioningCache(Landroid/database/Cursor;)V
    .registers 4

    .line 374
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVersioningCache()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_25

    .line 375
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_25

    .line 376
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "id"

    .line 377
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 379
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    :cond_25
    return-void
.end method

.method public waitVersioningCompleted()V
    .registers 5

    .line 127
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_8
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    if-nez v0, :cond_2c

    .line 130
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_23

    .line 131
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 132
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_20

    .line 133
    :try_start_17
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1f} :catch_23

    goto :goto_8

    :catchall_20
    move-exception v1

    .line 132
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    .line 135
    :catch_23
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2c
    return-void
.end method
