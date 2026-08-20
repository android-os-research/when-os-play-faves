.class public Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;
.super Landroid/content/ContentProvider;
.source "KnoxAnalyticsContentProvider.java"


# static fields
.field public static final B2C_FEATURE_PATH_ID:I = 0x7

.field public static final CLEANED_EVENTS_PATH_ID:I = 0x5

.field public static final DATABASE_SIZE_PATH_ID:I = 0x2

.field public static final EVENTS_PATH_ID:I = 0x1

.field public static final FEATURES_BLACKLIST_PATH_ID:I = 0x3

.field public static final FEATURES_WHITELIST_PATH_ID:I = 0x6

.field public static final TAG:Ljava/lang/String;

.field public static final VERSIONING_PATH_ID:I = 0x4

.field public static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field public volatile mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string v2, "events"

    const/4 v3, 0x1

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "size"

    const/4 v3, 0x2

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "features_blacklist"

    const/4 v3, 0x3

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "version"

    const/4 v3, 0x4

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cleaned_events"

    const/4 v3, 0x5

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "features_whitelist"

    const/4 v3, 0x6

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "package_feature_b2c"

    const/4 v3, 0x7

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_9c

    goto :goto_38

    :sswitch_c
    const-string/jumbo v0, "performCompressedEventsTransaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_38

    :cond_16
    const/4 v1, 0x3

    goto :goto_38

    :sswitch_18
    const-string v0, "notifyVersioningCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v1, 0x2

    goto :goto_38

    :sswitch_23
    const-string v0, "insertBulkEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v1, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "databaseClean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_ae

    .line 189
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call(): invalid method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 174
    :pswitch_53
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->performCompressedEventsTransaction(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 171
    :pswitch_5c
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->notifyVersioningCompleted()V

    return-object v0

    .line 176
    :pswitch_64
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addBulkEvents(Landroid/os/Bundle;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-ltz p3, :cond_8c

    .line 178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 180
    :try_start_76
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p3, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_87

    .line 182
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8c

    :catchall_87
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    throw p0

    .line 185
    :cond_8c
    :goto_8c
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p3, "lastEventId"

    .line 186
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0

    .line 169
    :pswitch_97
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_data_9c
    .sparse-switch
        -0x50df9672 -> :sswitch_2e
        -0x3ff82b9c -> :sswitch_23
        0x181ec758 -> :sswitch_18
        0x51f3f663 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_97
        :pswitch_64
        :pswitch_5c
        :pswitch_53
    .end packed-switch
.end method

.method public callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const-string/jumbo p1, "targetDbSize"

    .line 393
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 394
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string p1, "callDatabaseClean(): wrong extras!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_12
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    .line 399
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->cleanCompressedEventsTable(J)J

    move-result-wide p1

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v2

    .line 401
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "deletedEventsCount"

    .line 402
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sub-long/2addr v0, v2

    const-string p1, "deletedSizeBytes"

    .line 403
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public cleanCompressedEventsTable(J)J
    .registers 16

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_c
    cmp-long v7, v0, p1

    if-lez v7, :cond_64

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x1

    long-to-int v9, v7

    .line 416
    invoke-virtual {p0, v9}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getTotalCompressedEvents(I)I

    move-result v9

    .line 417
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteCompressedEventChunk(J)J

    move-result-wide v7

    .line 418
    sget-object v10, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " curS="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " tlDel="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " nxtCh="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delRows="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v7, v2

    if-nez v0, :cond_5d

    const-string p0, "cleanCompressedEventsTable(): error deleting or db is empty"

    .line 420
    invoke-static {v10, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_5d
    int-to-long v0, v9

    add-long/2addr v5, v0

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    goto :goto_c

    .line 426
    :cond_64
    :goto_64
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cleanCompressedEventsTable(): deletedEvents = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " iteration = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 126
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "delete()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 129
    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_45

    const/4 v2, 0x4

    if-eq v1, v2, :cond_40

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x6

    if-eq v1, v2, :cond_36

    const/4 v2, 0x7

    if-eq v1, v2, :cond_31

    const-string p0, "delete(): no match for URI"

    .line 149
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 146
    :cond_31
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_4e

    .line 143
    :cond_36
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_4e

    .line 140
    :cond_3b
    invoke-virtual {p0, p2, p3, v3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    goto :goto_4e

    .line 137
    :cond_40
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_4e

    .line 134
    :cond_45
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_4e

    .line 131
    :cond_4a
    invoke-virtual {p0, p2, p3, v2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    :goto_4e
    long-to-int p2, p2

    if-lez p2, :cond_6e

    if-eqz p1, :cond_6e

    .line 153
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 156
    :try_start_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 p3, 0x0

    .line 157
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_69

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6e

    :catchall_69
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw p0

    :cond_6e
    :goto_6e
    return p2
.end method

.method public final deleteFromB2CFeatures(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 366
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromB2CFeatures("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 368
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteB2CFeatures([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J
    .registers 15

    .line 317
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_a6

    .line 318
    array-length v3, p2

    if-nez v3, :cond_10

    goto/16 :goto_a6

    :cond_10
    const/4 v3, 0x0

    .line 322
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string p0, "deleteFromEvents(): empty selectionArgs[0]"

    .line 323
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 328
    :cond_1f
    :try_start_1f
    aget-object v4, p2, v3

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 330
    array-length v4, p2

    const/4 v5, 0x2

    const/4 v8, 0x1

    if-ne v4, v5, :cond_41

    aget-object v4, p2, v8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 331
    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_40} :catch_8d

    goto :goto_42

    :cond_41
    move-wide v9, v1

    .line 338
    :goto_42
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ac

    :goto_51
    move v3, p2

    goto :goto_72

    :sswitch_53
    const-string v3, "deleteUntilTargetDbSize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_51

    :cond_5c
    move v3, v5

    goto :goto_72

    :sswitch_5e
    const-string v3, "deleteUpToId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_51

    :cond_67
    move v3, v8

    goto :goto_72

    :sswitch_69
    const-string v4, "deleteChunkBySize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_51

    :cond_72
    :goto_72
    packed-switch v3, :pswitch_data_ba

    const-string p0, "deleteFromEvents(): invalid selection"

    .line 348
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 346
    :pswitch_7b
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUntilTargetDbSize(J)J

    move-result-wide p0

    return-wide p0

    .line 341
    :pswitch_80
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUpTo(J)J

    move-result-wide p0

    return-wide p0

    :pswitch_85
    move-object v5, p0

    move-wide v8, v9

    move v10, p3

    .line 343
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JJI)J

    move-result-wide p0

    return-wide p0

    .line 334
    :catch_8d
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteFromEvents(): invalid number "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_a6
    :goto_a6
    const-string p0, "deleteFromEvents(): no selectionArgs"

    .line 319
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :sswitch_data_ac
    .sparse-switch
        -0x2e2e60e6 -> :sswitch_69
        -0x2a299844 -> :sswitch_5e
        -0x10cc55d -> :sswitch_53
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_85
        :pswitch_80
        :pswitch_7b
    .end packed-switch
.end method

.method public final deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 354
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromFeaturesBlacklist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 356
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureBlacklist([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deleteFromFeaturesWhitelist(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 360
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromFeaturesWhitelist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 362
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureWhitelist([Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7

    .line 372
    sget-object p1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "deleteFromVersion()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_4a

    .line 373
    array-length v2, p2

    if-nez v2, :cond_f

    goto :goto_4a

    :cond_f
    const/4 v2, 0x0

    .line 377
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string p0, "deleteFromVersion(): empty selectionArgs[0]"

    .line 378
    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 383
    :cond_1e
    :try_start_1e
    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_28} :catch_31

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFromVersion(J)J

    move-result-wide p0

    return-wide p0

    .line 385
    :catch_31
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromVersion(): invalid number "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_4a
    :goto_4a
    const-string p0, "deleteFromVersion(): no selectionArgs"

    .line 374
    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    if-nez v0, :cond_19

    .line 209
    monitor-enter p0

    .line 210
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    if-nez v0, :cond_14

    .line 212
    new-instance v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    .line 214
    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :goto_19
    return-object v0
.end method

.method public final getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    .line 238
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "getFinalChunkSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chunk_size"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 241
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 243
    :goto_18
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCompressedEventsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_27

    return-object p1

    :cond_27
    if-eqz p1, :cond_3b

    .line 247
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/lit16 p0, p0, 0x3e8

    if-nez p0, :cond_32

    goto :goto_3b

    .line 248
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "query(): Selection argument must be null or multiples of 1000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 202
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string p1, "getType()"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

    .line 48
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insert()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_76

    const/4 v1, 0x3

    if-eq p1, v1, :cond_66

    const/4 v1, 0x4

    if-eq p1, v1, :cond_56

    const/4 v1, 0x5

    if-eq p1, v1, :cond_46

    const/4 v1, 0x6

    if-eq p1, v1, :cond_36

    const/4 v1, 0x7

    if-eq p1, v1, :cond_26

    const-string p0, "delete(): no match for URI"

    .line 76
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 72
    :cond_26
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_85

    .line 68
    :cond_36
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_85

    .line 64
    :cond_46
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_85

    .line 60
    :cond_56
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_85

    .line 56
    :cond_66
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_85

    .line 52
    :cond_76
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :goto_85
    if-eqz p1, :cond_be

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert(): notifyChange("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 83
    :try_start_a6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_be

    :catchall_b9
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0

    :cond_be
    :goto_be
    return-object p1
.end method

.method public final insertIntoB2CFeatures(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 286
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoB2CFeatures()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 288
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addB2CFeatures(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_18

    .line 291
    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public final insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 307
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoCleanedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 309
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addCleanedEvent(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_17
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 256
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addEvent(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_10
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 264
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 266
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureBlacklist(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_18

    .line 269
    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public final insertIntoFeaturesWhitelist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 275
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoFeaturesWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 277
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureWhitelist(Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_18

    .line 280
    sget-object p0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public final insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 297
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object p0

    .line 299
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()Z
    .registers 3

    .line 41
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 94
    sget-object p5, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "query()"

    invoke-static {p5, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_92

    const-string/jumbo p0, "query(): no match for URI"

    .line 119
    invoke-static {p5, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 116
    :pswitch_1d
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getB2CFeaturesCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 113
    :pswitch_2d
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureWhitelistCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 110
    :pswitch_3d
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 107
    :pswitch_51
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 104
    :pswitch_61
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureBlacklistCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 101
    :pswitch_71
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 98
    :pswitch_81
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p5

    invoke-static {p1, p5}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_81
        :pswitch_71
        :pswitch_61
        :pswitch_51
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public final queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_52

    .line 221
    array-length v2, p1

    if-lez v2, :cond_52

    .line 222
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_5c

    goto :goto_39

    :sswitch_19
    const-string v3, "lastEventId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_39

    :cond_22
    const/4 v2, 0x2

    goto :goto_39

    :sswitch_24
    const-string v3, "count"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_39

    :cond_2d
    move v2, v4

    goto :goto_39

    :sswitch_2f
    const-string v3, "chunkSizePlainEvents"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    packed-switch v2, :pswitch_data_6a

    goto :goto_52

    .line 224
    :pswitch_3d
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getLastId()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 226
    :pswitch_42
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCount()Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :pswitch_47
    const/16 p0, 0x3e8

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 234
    :cond_52
    :goto_52
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 233
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x6d71d6b -> :sswitch_2f
        0x5a7510f -> :sswitch_24
        0x1e424ddf -> :sswitch_19
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 196
    sget-object p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "update()"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
