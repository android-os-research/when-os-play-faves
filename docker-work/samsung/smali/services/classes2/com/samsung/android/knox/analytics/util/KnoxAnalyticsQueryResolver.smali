.class public Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;
.super Ljava/lang/Object;
.source "KnoxAnalyticsQueryResolver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBulkEvents(Landroid/content/Context;JLandroid/os/Bundle;I)J
    .registers 6

    .line 56
    sget-object p4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v0, "addBulkEvents()"

    invoke-static {p4, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "id"

    .line 59
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "insertBulkEvents"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "lastEventId"

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addBulkEvents(): lastId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method public static addEvent(Landroid/content/Context;JLjava/lang/String;I)J
    .registers 7

    .line 26
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 29
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "data"

    .line 31
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getUriFromType(I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "addEvent(): null ret uri"

    const-wide/16 p3, -0x1

    if-nez p1, :cond_2c

    .line 35
    invoke-static {v0, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p3

    .line 39
    :cond_2c
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_36

    .line 41
    invoke-static {v0, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p3

    .line 47
    :cond_36
    :try_start_36
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p3
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3a} :catch_3b

    goto :goto_56

    :catch_3b
    move-exception p0

    .line 49
    sget-object p1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addEvent(): error parsing return id - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_56
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addEvent(): actualId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p3
.end method

.method public static addVersioningBlob(Landroid/content/Context;ILjava/lang/String;J)J
    .registers 8

    .line 233
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 236
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "data"

    .line 238
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "eventId"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    const-wide/16 p1, -0x1

    if-nez p0, :cond_37

    const-string p0, "addVersioningBlob(): null ret uri"

    .line 243
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p1

    .line 249
    :cond_37
    :try_start_37
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3b} :catch_3c

    goto :goto_43

    .line 251
    :catch_3c
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string p3, "addVersioningBlob(): error parsing return id"

    invoke-static {p0, p3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-wide p1
.end method

.method public static callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .registers 5

    .line 202
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "targetDbSize"

    .line 205
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "databaseClean"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object p0

    return-object p0
.end method

.method public static callNotifyVersioningCompleted(Landroid/content/Context;)V
    .registers 4

    .line 277
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callNotifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 279
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "notifyVersioningCompleted"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getB2CFeatureByPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "feature_name"

    .line 361
    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v2, "getB2CFeatureFeaturesList()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 p0, 0x0

    .line 363
    :try_start_e
    sget-object v4, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "packageName"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_22} :catch_52

    if-eqz p1, :cond_3c

    .line 366
    :try_start_24
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_3c

    .line 371
    :cond_2b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 372
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    .line 374
    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_39} :catch_52

    return-object v0

    :catchall_3a
    move-exception v0

    goto :goto_47

    :cond_3c
    :goto_3c
    :try_start_3c
    const-string v0, "getB2CFeatureFeaturesList(): empty cursor"

    .line 367
    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_3a

    if-eqz p1, :cond_46

    .line 374
    :try_start_43
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_46} :catch_52

    :cond_46
    return-object p0

    :goto_47
    if-eqz p1, :cond_51

    .line 363
    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p1

    :try_start_4e
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v0
    :try_end_52
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p1

    .line 375
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeaturePackages()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 313
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_5b

    if-eqz p0, :cond_41

    .line 314
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_41

    :cond_1b
    const-string/jumbo v0, "packageName"

    .line 319
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    :cond_2e
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3f

    if-nez v2, :cond_2e

    .line 329
    :try_start_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_3e} :catch_5b

    return-object v1

    :catchall_3f
    move-exception v0

    goto :goto_50

    :cond_41
    :goto_41
    :try_start_41
    const-string v1, "getB2CFeaturePackages(): empty cursor"

    .line 315
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3f

    if-eqz p0, :cond_4f

    .line 329
    :try_start_4c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_5b

    :cond_4f
    return-object v0

    :goto_50
    if-eqz p0, :cond_5a

    .line 313
    :try_start_52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    throw v0
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception p0

    .line 330
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getB2CFeaturePackages(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getB2CFeatureFeaturesList()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 338
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_5a

    if-eqz p0, :cond_40

    .line 339
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_40

    :cond_1b
    const-string v0, "feature_name"

    .line 344
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    :cond_2d
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_3e

    if-nez v2, :cond_2d

    .line 354
    :try_start_3a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3d} :catch_5a

    return-object v1

    :catchall_3e
    move-exception v0

    goto :goto_4f

    :cond_40
    :goto_40
    :try_start_40
    const-string v1, "getB2CFeatureFeaturesList(): empty cursor"

    .line 340
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_3e

    if-eqz p0, :cond_4e

    .line 354
    :try_start_4b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4e} :catch_5a

    :cond_4e
    return-object v0

    :goto_4f
    if-eqz p0, :cond_59

    .line 338
    :try_start_51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p0

    :try_start_56
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw v0
    :try_end_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p0

    .line 355
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getB2CFeatureFeaturesList(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseSize(Landroid/content/Context;)J
    .registers 5

    .line 257
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getDatabaseSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 259
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_47

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_31

    .line 260
    :try_start_16
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_31

    .line 265
    :cond_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 266
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 267
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_2f

    .line 270
    :cond_2b
    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_47

    return-wide v1

    :catchall_2f
    move-exception v0

    goto :goto_3c

    :cond_31
    :goto_31
    :try_start_31
    const-string v3, "getDatabaseSize(): empty cursor"

    .line 261
    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2f

    if-eqz p0, :cond_3b

    .line 270
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3b} :catch_47

    :cond_3b
    return-wide v1

    :goto_3c
    if-eqz p0, :cond_46

    .line 259
    :try_start_3e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p0

    :try_start_43
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v0
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    move-exception p0

    .line 271
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDatabaseSize(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    throw p0
.end method

.method public static getEventCount(Landroid/content/Context;)J
    .registers 7

    .line 159
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v1, -0x1

    .line 161
    :try_start_d
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "count"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1a} :catch_47

    if-eqz p0, :cond_31

    .line 162
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_23

    goto :goto_31

    .line 166
    :cond_23
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 167
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 168
    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_47

    return-wide v3

    :catchall_2f
    move-exception v0

    goto :goto_3c

    :cond_31
    :goto_31
    :try_start_31
    const-string v3, "getEventCount(): empty cursor"

    .line 163
    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2f

    if-eqz p0, :cond_3b

    .line 168
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_3b} :catch_47

    :cond_3b
    return-wide v1

    :goto_3c
    if-eqz p0, :cond_46

    .line 161
    :try_start_3e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p0

    :try_start_43
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v0
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    move-exception p0

    .line 169
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEventCount(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public static getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 177
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_75

    if-eqz p0, :cond_5b

    .line 178
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_5b

    :cond_1b
    const-string v0, "feature"

    .line 183
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "disable_type"

    .line 184
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    :cond_33
    new-instance v4, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_41

    move-object v6, v1

    goto :goto_49

    :cond_41
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_49
    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_59

    if-nez v4, :cond_33

    .line 195
    :try_start_55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_58} :catch_75

    return-object v3

    :catchall_59
    move-exception v0

    goto :goto_6a

    :cond_5b
    :goto_5b
    :try_start_5b
    const-string v2, "getFeaturesBlacklist(): empty cursor"

    .line 179
    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_59

    if-eqz p0, :cond_69

    .line 195
    :try_start_66
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_69} :catch_75

    :cond_69
    return-object v0

    :goto_6a
    if-eqz p0, :cond_74

    .line 177
    :try_start_6c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p0

    :try_start_71
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw v0
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_71 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    .line 196
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getFeaturesWhitelist(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 286
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_75

    if-eqz p0, :cond_5b

    .line 287
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_5b

    :cond_1b
    const-string v0, "feature"

    .line 292
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "enable_type"

    .line 293
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 299
    :cond_33
    new-instance v4, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_41

    move-object v6, v2

    goto :goto_49

    :cond_41
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_49
    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_59

    if-nez v4, :cond_33

    .line 304
    :try_start_55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_58} :catch_75

    return-object v3

    :catchall_59
    move-exception v0

    goto :goto_6a

    :cond_5b
    :goto_5b
    :try_start_5b
    const-string v1, "getFeaturesWhitelist(): empty cursor"

    .line 288
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_59

    if-eqz p0, :cond_69

    .line 304
    :try_start_66
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_69} :catch_75

    :cond_69
    return-object v0

    :goto_6a
    if-eqz p0, :cond_74

    .line 286
    :try_start_6c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p0

    :try_start_71
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw v0
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_71 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    .line 305
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeaturesWhitelist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getLastEventId(Landroid/content/Context;)J
    .registers 5

    .line 139
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getLastEventId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 141
    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "lastEventId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_4d

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_37

    .line 142
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_23

    goto :goto_37

    :cond_23
    const/4 v0, 0x0

    .line 147
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 148
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_35

    .line 152
    :cond_31
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_34} :catch_4d

    return-wide v1

    :catchall_35
    move-exception v0

    goto :goto_42

    :cond_37
    :goto_37
    :try_start_37
    const-string v3, "getLastEventId(): empty cursor"

    .line 143
    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_35

    if-eqz p0, :cond_41

    .line 152
    :try_start_3e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_4d

    :cond_41
    return-wide v1

    :goto_42
    if-eqz p0, :cond_4c

    .line 141
    :try_start_44
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p0

    :try_start_49
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    .line 153
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastEventId(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    throw p0
.end method

.method public static getUriFromType(I)Landroid/net/Uri;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    .line 132
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v0, "getUriFromType(): not URI associated with this log type"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_13

    .line 129
    :cond_e
    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_13

    .line 126
    :cond_11
    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    :goto_13
    return-object p0
.end method

.method public static getVersioningBlob(Landroid/content/Context;)[Ljava/lang/String;
    .registers 8

    .line 211
    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 213
    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_82

    :try_start_12
    const-string v2, "-1"

    const-string v3, ""

    .line 214
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_6b

    .line 215
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_23

    goto :goto_6b

    .line 220
    :cond_23
    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_67

    const-string v3, "id"

    .line 221
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "data"

    .line 222
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVersioningBlob() - id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_12 .. :try_end_67} :catchall_76

    .line 226
    :cond_67
    :try_start_67
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6a} :catch_82

    return-object v2

    :cond_6b
    :goto_6b
    :try_start_6b
    const-string v3, "getVersioningBlob(): empty cursor"

    .line 216
    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_76

    if-eqz p0, :cond_75

    .line 226
    :try_start_72
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_75} :catch_82

    :cond_75
    return-object v2

    :catchall_76
    move-exception v0

    if-eqz p0, :cond_81

    .line 213
    :try_start_79
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception p0

    :try_start_7e
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_81
    :goto_81
    throw v0
    :try_end_82
    .catch Ljava/lang/IllegalStateException; {:try_start_7e .. :try_end_82} :catch_82

    .line 227
    :catch_82
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v0, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;
    .registers 7

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/ZipHandler;->deflate([B)Lcom/samsung/android/knox/analytics/util/ZipResult;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 101
    sget-object p0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "performCompressedEventsTransaction(): null input data"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_14
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getContent()[B

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getOriginalLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "original_length"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/EventList;->getTotalEventsCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "bulk"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "plainEventsSize"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "cv"

    .line 112
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 115
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "performCompressedEventsTransaction"

    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;
    .registers 8

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    new-instance p0, Lcom/samsung/android/knox/analytics/model/EventList;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/model/EventList;-><init>()V

    .line 72
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "chunkSizePlainEvents"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 74
    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_22

    goto :goto_75

    .line 77
    :cond_22
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "id"

    .line 78
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "vid"

    .line 79
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "bulk"

    .line 80
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "data"

    .line 81
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_51
    .catchall {:try_start_1b .. :try_end_51} :catchall_6b

    .line 85
    :try_start_51
    new-instance v6, Lcom/samsung/android/knox/analytics/model/Event;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/samsung/android/knox/analytics/model/Event;-><init>(IIILjava/lang/String;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_56} :catch_57
    .catchall {:try_start_51 .. :try_end_56} :catchall_6b

    goto :goto_60

    :catch_57
    move-exception v2

    .line 87
    :try_start_58
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "Could not parse JSON. Invalid format"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v1

    :goto_60
    if-nez v6, :cond_63

    goto :goto_22

    .line 92
    :cond_63
    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/analytics/model/EventList;->put(Lcom/samsung/android/knox/analytics/model/Event;)V
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_6b

    goto :goto_22

    .line 94
    :cond_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_6b
    move-exception p0

    .line 72
    :try_start_6c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw p0

    :cond_75
    :goto_75
    if-eqz v0, :cond_7a

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7a
    return-object v1
.end method
