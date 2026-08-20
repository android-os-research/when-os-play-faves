.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field public static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field public static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field public static final ATTR_UID:Ljava/lang/String; = "uid"

.field public static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field public static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field public static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field public static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mLock:Ljava/lang/Object;

.field public mPreviousValuesFile:Landroid/util/AtomicFile;

.field public final mQuotaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteService(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUnfulfilledRequests(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 100
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 101
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Landroid/util/ArrayMap;

    iput-object p4, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 102
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/io/File;

    .line 103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p4

    const-string/jumbo v0, "system"

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p4, "cachequota.xml"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static getRequestFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "uuid"

    .line 391
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    .line 392
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "bytes"

    .line 393
    invoke-interface {p0, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 394
    new-instance p0, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {p0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 395
    invoke-virtual {p0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object p0
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    const-string p0, "CacheQuotaStrategy"

    const-string v1, "Invalid cache quota request, skipping."

    .line 397
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    .line 346
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    :goto_8
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_13

    .line 349
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    if-ne v0, v2, :cond_1e

    const-string p0, "CacheQuotaStrategy"

    const-string v0, "No quotas found in quota file."

    .line 353
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 357
    :cond_1e
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "cache-info"

    .line 358
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_2f
    const-string/jumbo v4, "previousBytes"

    .line 365
    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_36} :catch_63

    .line 371
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    :cond_3a
    if-ne v5, v1, :cond_53

    .line 374
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "quota"

    .line 375
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 376
    invoke-static {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v6

    if-nez v6, :cond_50

    goto :goto_57

    .line 380
    :cond_50
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_53
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    :goto_57
    if-ne v5, v2, :cond_3a

    .line 385
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 367
    :catch_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Previous bytes formatted incorrectly; aborting quota read."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 359
    :cond_6b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid starting tag."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static saveToXml(Landroid/util/TypedXmlSerializer;Ljava/util/List;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "cache-info"

    .line 323
    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v3, "previousBytes"

    .line 325
    invoke-interface {p0, v1, v3, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const/4 p2, 0x0

    :goto_16
    if-ge p2, v2, :cond_4d

    .line 328
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/CacheQuotaHint;

    const-string/jumbo v3, "quota"

    .line 329
    invoke-interface {p0, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 332
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uuid"

    invoke-interface {p0, v1, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_34
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v4

    const-string/jumbo v5, "uid"

    invoke-interface {p0, v1, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v4

    const-string p3, "bytes"

    invoke-interface {p0, v1, p3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {p0, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 338
    :cond_4d
    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    invoke-interface {p0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method


# virtual methods
.method public final createServiceConnection()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_5

    return-void

    .line 127
    :cond_5
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public final disconnectService()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_c

    .line 254
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_c
    return-void
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CacheQuotaStrategy"

    if-nez v0, :cond_15

    const-string p0, "could not access the cache quota service: no package!"

    .line 263
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 267
    :cond_15
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.usage.CacheQuotaService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x84

    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 271
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_32

    goto :goto_3c

    .line 276
    :cond_32
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3c
    :goto_3c
    const-string p0, "No valid components found."

    .line 272
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getUnfulfilledRequests()Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide v1, 0x7528ad000L

    sub-long v11, v9, v1

    .line 170
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 172
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    .line 173
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 174
    iget-object v1, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v6, 0x0

    move v7, v6

    :goto_2c
    if-ge v7, v15, :cond_97

    .line 176
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 177
    iget-object v1, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x4

    const/16 v16, 0x0

    move-object/from16 v17, v4

    move-wide v4, v11

    move/from16 v18, v7

    move-wide v6, v9

    move-object v0, v8

    move/from16 v8, v16

    .line 178
    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4d

    :cond_4b
    const/4 v6, 0x0

    goto :goto_91

    .line 184
    :cond_4d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 185
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    .line 189
    :try_start_63
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_65} :catch_8d

    const/4 v6, 0x0

    :try_start_66
    invoke-virtual {v0, v3, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 191
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 193
    invoke-virtual {v5, v7}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 194
    invoke-virtual {v5, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {v3, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v2

    const-wide/16 v7, -0x1

    .line 196
    invoke-virtual {v2, v7, v8}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v2

    .line 191
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_8c} :catch_8e

    goto :goto_8e

    :catch_8d
    const/4 v6, 0x0

    :catch_8e
    :goto_8e
    move-object/from16 v17, v4

    goto :goto_51

    :goto_91
    add-int/lit8 v7, v18, 0x1

    move-object v8, v0

    move-object/from16 v0, p0

    goto :goto_2c

    :cond_97
    return-object v13
.end method

.method public final insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .registers 7

    .line 244
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    if-nez v0, :cond_14

    .line 246
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 247
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_14
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-virtual {v0, p0, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "requests"

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    return-void
.end method

.method public final pushProcessedQuotas(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5e

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/CacheQuotaHint;

    .line 220
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v9

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_18

    goto :goto_5b

    .line 226
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v11

    .line 227
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 229
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    move-wide v7, v9

    .line 227
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 230
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 232
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    move-object v3, p0

    move-wide v7, v9

    .line 230
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_3f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    move-exception v3

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set cache quota for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CacheQuotaStrategy"

    .line 234
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 240
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    return-void
.end method

.method public recalculateQuotas()V
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_1b
    return-void
.end method

.method public setupQuotasFromFile()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 299
    :try_start_2
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_8} :catch_43

    .line 301
    :try_start_8
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_c} :catch_2d
    .catchall {:try_start_8 .. :try_end_c} :catchall_2b

    if-eqz v2, :cond_11

    .line 305
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_43

    :cond_11
    if-nez v3, :cond_1b

    const-string p0, "CacheQuotaStrategy"

    const-string v2, "An error occurred while parsing the cache quota file."

    .line 311
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 314
    :cond_1b
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 316
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :catchall_2b
    move-exception p0

    goto :goto_38

    :catch_2d
    move-exception p0

    .line 303
    :try_start_2e
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    :goto_38
    if-eqz v2, :cond_42

    .line 299
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v2

    :try_start_3f
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p0
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    return-wide v0
.end method

.method public final writeXmlToFile(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    :try_start_1
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 284
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Landroid/util/TypedXmlSerializer;Ljava/util/List;J)V

    .line 286
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_32

    :catch_25
    move-exception p1

    const-string v1, "CacheQuotaStrategy"

    const-string v2, "An error occurred while writing the cache quota file."

    .line 288
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_32
    return-void
.end method
