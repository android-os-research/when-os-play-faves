.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field public static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field public static final MAX_PEOPLE:I = 0xa

.field public static final NONE:F = 0.0f

.field public static final PEOPLE_CACHE_SIZE:I = 0xc8

.field public static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field public static final STARRED_CONTACT:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field public static final VALID_CONTACT:F = 0.5f

.field public static final VERBOSE:Z


# instance fields
.field public mBaseContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mEvictionCount:I

.field public mHandler:Landroid/os/Handler;

.field public mObserver:Landroid/database/ContentObserver;

.field public mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$yljNe9iLtus7NmUJFr0-ee4-YZM(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->lambda$updateExceptionContacts$0(ILandroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPeopleCache(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStats(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCacheKey(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresolveEmailContact(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresolvePhoneContact(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateExceptionContacts(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ValidateNotificationPeople;->updateExceptionContacts(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetVERBOSE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    const/4 v1, 0x3

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v0, "_id"

    const-string/jumbo v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string/jumbo v3, "has_phone_number"

    .line 78
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v0, "data4"

    const-string v1, "data1"

    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 458
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 459
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p0, v3

    .line 460
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 462
    :cond_1b
    array-length p0, p1

    :goto_1c
    if-ge v2, p0, :cond_26

    aget-object v1, p1, v2

    .line 463
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 465
    :cond_26
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 3

    const-string v0, "android.people.list"

    .line 446
    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.people"

    .line 447
    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 470
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 471
    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 472
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 475
    :cond_b
    instance-of p1, p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_6f

    .line 476
    check-cast p0, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    return-object v0

    .line 482
    :cond_1a
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_2f

    .line 484
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 487
    :cond_2f
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4f

    .line 489
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 490
    new-array v0, p1, [Ljava/lang/String;

    :goto_3d
    if-ge v1, p1, :cond_4e

    .line 492
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4e
    return-object v0

    .line 497
    :cond_4f
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Person;

    if-eqz p1, :cond_6e

    .line 499
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 500
    new-array v0, p1, [Ljava/lang/String;

    :goto_5d
    if-ge v1, p1, :cond_6e

    .line 502
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    invoke-virtual {v2}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_6e
    return-object v0

    .line 510
    :cond_6f
    instance-of p1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_7b

    new-array p1, v2, [Ljava/lang/String;

    .line 512
    check-cast p0, Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    .line 516
    :cond_7b
    instance-of p1, p0, [C

    if-eqz p1, :cond_8b

    new-array p1, v2, [Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/lang/String;

    check-cast p0, [C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p1, v1

    return-object p1

    .line 522
    :cond_8b
    instance-of p1, p0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9a

    new-array p1, v2, [Ljava/lang/String;

    .line 524
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1

    .line 528
    :cond_9a
    instance-of p1, p0, [Ljava/lang/CharSequence;

    if-eqz p1, :cond_b0

    .line 529
    check-cast p0, [Ljava/lang/CharSequence;

    .line 530
    array-length p1, p0

    .line 531
    new-array v0, p1, [Ljava/lang/String;

    :goto_a3
    if-ge v1, p1, :cond_b0

    .line 533
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_b0
    return-object v0
.end method

.method private synthetic lambda$updateExceptionContacts$0(ILandroid/content/Context;)V
    .registers 14

    .line 296
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "ValidateNoPeople"

    if-nez v0, :cond_d

    const-string/jumbo p0, "skipping - no zen info available"

    .line 297
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    .line 305
    :cond_14
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 306
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 308
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 310
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getUpdatedExceptionContacts(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v10

    .line 312
    new-instance p1, Landroid/app/NotificationManager$Policy;

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v7, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v8, v0, Landroid/app/NotificationManager$Policy;->state:I

    iget v9, v0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const-string p0, "The contacts of policy has been updated."

    .line 317
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 10

    const-string p0, "ValidateNoPeople"

    .line 622
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_37

    if-nez p2, :cond_1d

    :try_start_12
    const-string p1, "Null cursor from contacts query."

    .line 625
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2b

    if-eqz p2, :cond_1c

    .line 631
    :try_start_19
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_37

    :cond_1c
    return-void

    .line 628
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_27

    .line 629
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2b

    goto :goto_1d

    .line 631
    :cond_27
    :try_start_27
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_37

    goto :goto_3d

    :catchall_2b
    move-exception p1

    if-eqz p2, :cond_36

    .line 622
    :try_start_2e
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p2

    :try_start_33
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    throw p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    const-string p2, "Problem getting content resolver or performing contacts query."

    .line 632
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public final addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6

    .line 597
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->findWorkUserId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Work profile user ID not found for work contact: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ValidateNoPeople"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_1e
    invoke-static {p3, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p3

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final findWorkUserId(Landroid/content/Context;)I
    .registers 6

    .line 609
    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    .line 612
    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget v2, p1, v1

    .line 613
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public final getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .registers 16

    .line 186
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v1, "ValidateNoPeople"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x0

    if-nez p2, :cond_1e

    return v0

    .line 188
    :cond_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 190
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_35

    return v0

    :cond_35
    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v2

    move-object v7, p2

    move-object v9, v3

    .line 196
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    const/4 p2, 0x0

    aget v0, v3, p2

    if-eqz p1, :cond_9e

    .line 203
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 204
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {p2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    int-to-long p2, p3

    .line 213
    :try_start_53
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3, p0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_78

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Timeout while waiting for affinity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Returning timeoutAffinity="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_77} :catch_81

    return p4

    .line 224
    :cond_78
    invoke-virtual {p1}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_9e

    :catch_81
    move-exception p0

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "InterruptedException while waiting for affinity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Returning affinity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9e
    :goto_9e
    return v0
.end method

.method public final getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_31

    .line 359
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 360
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception p0

    const-string p1, "ValidateNoPeople"

    const-string v1, "failed to create package context for lookups"

    .line 362
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-object v0
.end method

.method public final getUpdatedExceptionContacts(Landroid/content/Context;Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "ValidateNoPeople"

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_a2

    .line 323
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_a2

    .line 326
    :cond_11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_15

    .line 329
    :try_start_2b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_9a

    if-eqz v3, :cond_7c

    .line 334
    :try_start_4d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, "data1"

    .line 335
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "There is a contact has been updated."

    .line 336
    invoke-static {p0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    aget-object v1, v1, v4

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :catchall_7a
    move-exception v1

    goto :goto_8f

    :cond_7c
    if-nez v3, :cond_84

    const-string v1, "Failed to query the contact."

    .line 341
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :cond_84
    const-string v1, "There is a contact has been deleted."

    .line 343
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_4d .. :try_end_89} :catchall_7a

    :goto_89
    if-eqz v3, :cond_15

    .line 345
    :try_start_8b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_9a

    goto :goto_15

    :goto_8f
    if-eqz v3, :cond_99

    .line 329
    :try_start_91
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v2

    :try_start_96
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v1
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v1

    const-string v2, "Problem getting content resolver or performing contacts query."

    .line 346
    invoke-static {p0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_a2
    :goto_a2
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 5

    .line 118
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 122
    new-instance p2, Landroid/util/LruCache;

    const/16 v0, 0xc8

    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 123
    iget-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "validate_notification_people_enabled"

    const/4 v1, 0x1

    .line 123
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne v1, p2, :cond_4d

    move p2, v1

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    iput-boolean p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-eqz p2, :cond_70

    .line 126
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance p2, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 142
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_70
    return-void
.end method

.method public isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p3

    .line 231
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e9

    move-object v4, p0

    .line 234
    iget-object v0, v4, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 235
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2c

    .line 238
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    .line 240
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    .line 242
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    .line 246
    :cond_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    :cond_34
    :goto_34
    move-object v11, v5

    move v5, v3

    .line 249
    :goto_36
    array-length v0, v2

    const/4 v12, 0x1

    if-ge v5, v0, :cond_7f

    .line 250
    aget-object v0, v2, v5

    if-nez v0, :cond_3f

    goto :goto_7c

    :cond_3f
    const-string v6, ":"

    .line 251
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 252
    array-length v6, v0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4c

    goto :goto_7c

    :cond_4c
    const/4 v6, 0x0

    .line 255
    :try_start_4d
    aget-object v0, v0, v12

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 260
    :goto_5a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    .line 261
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 262
    array-length v8, v7

    if-le v8, v12, :cond_5e

    .line 263
    aget-object v7, v7, v12

    invoke-static {v6, v7, v11}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5e

    return v12

    :cond_7c
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 269
    :cond_7f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    new-array v9, v12, [F

    .line 271
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_9b

    const/4 v8, 0x0

    move-object v4, p0

    move-object v7, p2

    move-object v10, v0

    .line 274
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    .line 278
    :cond_9b
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9f
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInExceptionContacts phone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ValidateNoPeople"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_c5

    goto :goto_9f

    :cond_c5
    move v4, v3

    .line 281
    :goto_c6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9f

    .line 282
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d3

    goto :goto_e6

    .line 283
    :cond_d3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6, v11}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e6

    const-string/jumbo v0, "isInExceptionContacts return true"

    .line 284
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_e6
    :goto_e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    :cond_e9
    return v3
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6

    .line 148
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const-string v1, "ValidateNoPeople"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 149
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_10

    const-string p0, "disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v2

    :cond_11
    if-eqz p1, :cond_46

    .line 152
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_46

    .line 156
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    .line 157
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_2b

    const-string/jumbo p0, "skipping global notification"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-object v2

    .line 160
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_41

    .line 162
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_40

    const-string/jumbo p0, "skipping notification that lacks a context"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-object v2

    .line 165
    :cond_41
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object p0

    return-object p0

    .line 153
    :cond_46
    :goto_46
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_50

    const-string/jumbo p0, "skipping empty notification"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-object v2
.end method

.method public final resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4

    .line 548
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 550
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method public final resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4

    .line 542
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 543
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 542
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method public searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 556
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 558
    invoke-static {p2}, Landroid/provider/ContactsContract$Contacts;->createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_f

    .line 560
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_12

    .line 562
    :cond_f
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_12
    return-object v0
.end method

.method public searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "ValidateNoPeople"

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    .line 574
    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneLookupKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    const-string/jumbo v4, "lookup = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    .line 578
    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_49

    if-nez p1, :cond_2f

    :try_start_24
    const-string p2, "Cursor is null when querying contact phone number."

    .line 582
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_3d

    if-eqz p1, :cond_2e

    .line 589
    :try_start_2b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_49

    :cond_2e
    return-object p0

    .line 586
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergePhoneNumber(Landroid/database/Cursor;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3d

    goto :goto_2f

    .line 589
    :cond_39
    :try_start_39
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_49

    goto :goto_4f

    :catchall_3d
    move-exception p2

    if-eqz p1, :cond_48

    .line 578
    :try_start_40
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception p1

    :try_start_45
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw p2
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    const-string p2, "Problem getting content resolver or querying phone numbers."

    .line 590
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method public final updateExceptionContacts(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5

    .line 295
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13

    .line 370
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v7, 0x1

    new-array v8, v7, [F

    .line 373
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 375
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object p1

    const/4 v0, 0x0

    aget v1, v8, v0

    .line 378
    invoke-virtual {p2, v9}, Lcom/android/server/notification/NotificationRecord;->mergePhoneNumbers(Landroid/util/ArraySet;)V

    .line 379
    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    if-nez p1, :cond_3e

    .line 381
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_32

    move v2, v7

    goto :goto_33

    :cond_32
    move v2, v0

    :goto_33
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3a

    move v0, v7

    :cond_3a
    invoke-virtual {p0, p2, v2, v0, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_41

    .line 384
    :cond_3e
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    :goto_41
    return-object p1
.end method

.method public final validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[FLandroid/util/ArraySet;)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 396
    :cond_4
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 397
    invoke-static {p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 399
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_16
    sget-boolean p3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p3, :cond_3c

    const-string p3, "ValidateNoPeople"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_3c
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 405
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v1, 0x0

    move v2, p4

    :cond_48
    :goto_48
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    goto :goto_48

    .line 408
    :cond_5b
    iget-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 409
    :try_start_5e
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v7, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    if-eqz v5, :cond_84

    .line 411
    invoke-static {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->-$$Nest$misExpired(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_84

    .line 414
    :cond_77
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v3, :cond_87

    const-string v3, "ValidateNoPeople"

    const-string/jumbo v7, "using cached lookupResult"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 412
    :cond_84
    :goto_84
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    if-eqz v5, :cond_9e

    .line 417
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 418
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 419
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p6, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 422
    :cond_9e
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_48

    goto :goto_a9

    :catchall_a6
    move-exception p0

    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_5e .. :try_end_a8} :catchall_a6

    throw p0

    .line 429
    :cond_a9
    :goto_a9
    aput v1, p5, p4

    .line 431
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_cc

    .line 432
    sget-boolean p0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz p0, :cond_cb

    const-string p0, "ValidateNoPeople"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "final affinity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    return-object v0

    .line 436
    :cond_cc
    sget-boolean p3, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz p3, :cond_e6

    const-string p3, "ValidateNoPeople"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Pending: future work scheduled for: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_e6
    new-instance p3, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration-IA;)V

    return-object p3
.end method
