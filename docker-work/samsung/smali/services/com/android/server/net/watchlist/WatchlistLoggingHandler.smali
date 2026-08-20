.class public Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "WatchlistLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistLoggingHandler$WatchlistEventKeys;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DROPBOX_TAG:Ljava/lang/String; = "network_watchlist_report"

.field public static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_WATCHLIST_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ONE_DAY_MS:J

.field public static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field public final mContext:Landroid/content/Context;

.field public final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field public final mDropBoxManager:Landroid/os/DropBoxManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mPrimaryUserId:I

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method public static synthetic $r8$lambda$hYh7V7JFNCZTX79f8kHANWTQUYY(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;ILjava/lang/Integer;)[B
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->lambda$getDigestFromUid$0(ILjava/lang/Integer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 60
    const-class v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, -0x1

    .line 80
    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 84
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 99
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 100
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 101
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 102
    const-class p2, Landroid/os/DropBoxManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    return-void
.end method

.method public static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 422
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "."

    .line 424
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_12
    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    add-int/lit8 v2, v2, 0x1

    .line 426
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 428
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_24
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_12

    :cond_29
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 432
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getLastMidnightTime()J
    .registers 2

    const/4 v0, 0x0

    .line 436
    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getMidnightTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMidnightTimestamp(I)J
    .registers 4

    .line 440
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 442
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 443
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 444
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 445
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    neg-int p0, p0

    const/4 v1, 0x5

    .line 446
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 447
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$getDigestFromUid$0(ILjava/lang/Integer;)[B
    .registers 11

    .line 330
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 332
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8c

    .line 333
    array-length v1, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_8c

    aget-object v4, v0, v3

    .line 335
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0xc0000

    invoke-virtual {v5, v4, v6, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 340
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find apkPath for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 343
    :cond_44
    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 346
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping incremental path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 349
    :cond_63
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p0
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_6c} :catch_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    .line 351
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get digest from uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",pkg: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    return-object v2
.end method


# virtual methods
.method public final addEncodedReportToDropBox([B)V
    .registers 4

    .line 320
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v0, "network_watchlist_report"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    return-void
.end method

.method public asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "host"

    .line 189
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "ipAddresses"

    .line 190
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 191
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string/jumbo p3, "timestamp"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceReportWatchlistForTest(J)V
    .registers 4

    const/4 v0, 0x3

    .line 178
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 179
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_3b

    .line 309
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v4

    if-eqz v4, :cond_38

    .line 311
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 315
    :cond_3b
    iget-object p0, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 316
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getDigestFromUid(I)[B
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getPrimaryUserId()I
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 143
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 145
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    .line 131
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "WatchlistLoggingHandler received an unknown of message."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 123
    :cond_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_23

    .line 124
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    goto :goto_57

    .line 127
    :cond_23
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "Msg.obj needs to be a Long object."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 120
    :cond_2b
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getLastMidnightTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    goto :goto_57

    .line 110
    :cond_33
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "host"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "ipAddresses"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "uid"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "timestamp"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v1, p0

    .line 111
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V

    :goto_57
    return-void
.end method

.method public final handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V
    .registers 8

    .line 203
    iget v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 204
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 208
    :cond_b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    if-eq v0, v1, :cond_14

    return-void

    .line 214
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 216
    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    goto :goto_27

    .line 218
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 220
    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final insertRecord(ILjava/lang/String;J)V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isPackageTestOnly(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 236
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 240
    :cond_16
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->insertNewRecord([BLjava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 241
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to insert record for uid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public final isHostInWatchlist(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_4
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsDomain(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isIpInWatchlist(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_4
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsIp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageTestOnly(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 157
    array-length v1, p1

    if-nez v1, :cond_d

    goto :goto_1d

    .line 161
    :cond_d
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_33

    .line 166
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 158
    :cond_1d
    :goto_1d
    :try_start_1d
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_33} :catch_33

    :catch_33
    return v0
.end method

.method public reportWatchlistIfNecessary()V
    .registers 2

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 406
    :cond_4
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 407
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, p1, v2

    .line 408
    invoke-virtual {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isHostInWatchlist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public final searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 371
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 372
    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isIpInWatchlist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldReportNetworkWatchlist(J)Z
    .registers 9

    .line 246
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_watchlist_last_report_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_1d

    .line 249
    sget-object p1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p2, "Last report time is larger than current time, reset report"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z

    return v3

    .line 253
    :cond_1d
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    add-long/2addr v0, v4

    cmp-long p0, p1, v0

    if-ltz p0, :cond_25

    const/4 v3, 0x1

    :cond_25
    return v3
.end method

.method public final tryAggregateRecords(J)V
    .registers 11

    const-string v0, "Milliseconds spent on tryAggregateRecords(): "

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 260
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 261
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string p1, "No need to aggregate record yet."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_a4

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_2b
    :try_start_2b
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Start aggregating watchlist records."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-eqz v4, :cond_82

    const-string/jumbo v5, "network_watchlist_report"

    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 266
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "network_watchlist_last_report_time"

    invoke-static {v4, v5, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 269
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 270
    invoke-virtual {v4, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    move-result-object v4

    if-nez v4, :cond_6c

    const-string p0, "Cannot get result from database"

    .line 272
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_a4

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_6c
    :try_start_6c
    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    move-result-object v5

    .line 278
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-virtual {v6}, Lcom/android/server/net/watchlist/WatchlistSettings;->getPrivacySecretKey()[B

    move-result-object v6

    .line 279
    iget-object v7, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-static {v7, v6, v5, v4}, Lcom/android/server/net/watchlist/ReportEncoder;->encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B

    move-result-object v4

    if-eqz v4, :cond_87

    .line 282
    invoke-virtual {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->addEncodedReportToDropBox([B)V

    goto :goto_87

    :cond_82
    const-string v4, "Network Watchlist dropbox tag is not enabled"

    .line 285
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_87
    :goto_87
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z
    :try_end_8c
    .catchall {:try_start_6c .. :try_end_8c} :catchall_a4

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_a4
    move-exception p0

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 290
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    throw p0
.end method
