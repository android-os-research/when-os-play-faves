.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_VERSION:I = 0x3

.field public static final ACCOUNT_INFO_FILE_NAME:Ljava/lang/String; = "accounts.xml"

.field public static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field public static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field public static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final DELETE_LEGACY_PARCEL_FILES:Z = true

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final LEGACY_STATISTICS_FILE_NAME:Ljava/lang/String; = "stats.bin"

.field public static final LEGACY_STATUS_FILE_NAME:Ljava/lang/String; = "status.bin"

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field public static final MILLIS_IN_4WEEKS:J = 0x90321000L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_WRITE_STATISTICS:I = 0x2

.field public static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATISTICS_FILE_NAME:Ljava/lang/String; = "stats"

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field public static final STATUS_FILE_NAME:Ljava/lang/String; = "status"

.field public static final SYNC_DIR_NAME:Ljava/lang/String; = "sync"

.field public static final SYNC_ENABLED_DEFAULT:Z = false

.field public static final TAG:Ljava/lang/String; = "SyncManager"

.field public static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field public static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field public static final WRITE_STATUS_DELAY:J = 0x927c0L

.field public static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field public static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field public static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field public static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field public static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field public static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field public static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field public static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field public final mAccountInfoFile:Landroid/util/AtomicFile;

.field public final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mAuthorities:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field public final mCal:Ljava/util/Calendar;

.field public final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDefaultMasterSyncAutomatically:Z

.field public mGrantSyncAdaptersAccountAccess:Z

.field public final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field public volatile mIsClockValid:Z

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mNextAuthorityId:I

.field public mNextHistoryId:I

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStatisticsFile:Landroid/util/AtomicFile;

.field public final mStatusFile:Landroid/util/AtomicFile;

.field public mSyncDir:Ljava/io/File;

.field public final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSyncRandomOffset:I

.field public mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field public final mSyncStatus:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mYear:I

.field public mYearInDays:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmPeriodicSyncAddedListener()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .registers 1

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    .line 147
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 478
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 8

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 450
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 453
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 460
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 464
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 467
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 470
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 513
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 514
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 526
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 527
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 528
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 529
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v2, "GMT+0"

    .line 531
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x11101e1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 536
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 538
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    new-instance p2, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {p2, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 540
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 542
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 544
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string v3, "accounts.xml"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-accounts"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 546
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v3, "status"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-status"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 547
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v3, "stats"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-stats"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 549
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 550
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 551
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 553
    invoke-virtual {p3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 554
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Loaded "

    aput-object v0, p2, v1

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    const-string v3, " items"

    aput-object v3, p2, v0

    invoke-virtual {p3, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move p2, v1

    :goto_f9
    if-ge p2, p1, :cond_10d

    .line 557
    iget-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p3, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_f9

    :cond_10d
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 4

    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    long-to-double p0, p0

    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0

    :cond_19
    const-wide/16 p0, 0xd80

    return-wide p0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 575
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_7

    .line 578
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 576
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 567
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_5

    return-void

    .line 570
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 571
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 4

    .line 563
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 11

    .line 1148
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    .line 1149
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "SyncManager"

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1153
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1150
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_41
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1156
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1160
    new-instance v8, Landroid/content/SyncInfo;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1165
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_6f

    .line 1167
    iget-object p1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-object v8

    :catchall_6f
    move-exception p0

    .line 1166
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    .registers 5

    .line 623
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 624
    :try_start_3
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    .line 625
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 626
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public clearAllBackoffsLocked()V
    .registers 13

    .line 924
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 925
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 927
    :try_start_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 928
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 929
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_42

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_28

    :cond_42
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    .line 931
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_91

    const-string v6, "SyncManager"

    .line 932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_91
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 940
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 941
    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 945
    :cond_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_8 .. :try_end_a2} :catchall_bc

    .line 947
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a8
    if-lez v1, :cond_bb

    const/4 v3, 0x0

    .line 949
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 948
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a8

    :cond_bb
    return-void

    :catchall_bc
    move-exception p0

    .line 945
    :try_start_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p0
.end method

.method public clearAndReadState()V
    .registers 3

    .line 1646
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1647
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1648
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1649
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1650
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1651
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1659
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    if-gez p2, :cond_9

    .line 1578
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 p3, p2, 0x1

    .line 1579
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/4 p3, 0x1

    :cond_9
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    .line 1582
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_26
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1586
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_35

    .line 1588
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_35
    return-object v0
.end method

.method public final createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1506
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object p0

    .line 1507
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance p1, Landroid/content/SyncStatusInfo;

    invoke-direct {p1, p0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 3

    .line 1045
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1046
    :try_start_3
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1047
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAuthorityCount()I
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1040
    :try_start_3
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1041
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    .line 1530
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1531
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SyncManager"

    if-nez p0, :cond_37

    if-eqz p2, :cond_36

    .line 1534
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 1535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown account "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-object v2

    .line 1540
    :cond_37
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez p0, :cond_65

    if-eqz p2, :cond_64

    .line 1543
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 1544
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unknown provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-object v2

    :cond_65
    return-object p0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "getBackoff"

    .line 845
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 847
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    .line 849
    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 850
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1423
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1427
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getCurrentDayLocked()I
    .registers 6

    .line 1511
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1513
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1514
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1515
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1516
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1517
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1519
    :cond_3c
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCurrentSyncs(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1382
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1383
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1393
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p0

    .line 1394
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    if-nez p2, :cond_29

    .line 1398
    iget v2, v1, Landroid/content/SyncInfo;->authorityId:I

    iget-object v3, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v4, v1, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v2, v3, v4, v5}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v1

    goto :goto_2f

    .line 1401
    :cond_29
    new-instance v2, Landroid/content/SyncInfo;

    invoke-direct {v2, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    move-object v1, v2

    .line 1403
    :goto_2f
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1405
    :cond_33
    monitor-exit v0

    return-object p1

    :catchall_35
    move-exception p0

    .line 1406
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 1412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 5

    .line 1497
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1498
    :try_start_3
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, p0

    new-array v2, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    .line 1499
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    monitor-exit v0

    return-object v2

    :catchall_e
    move-exception p0

    .line 1501
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 4

    .line 954
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "getDelayUntil"

    .line 955
    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-nez p0, :cond_f

    const-wide/16 p0, 0x0

    .line 957
    monitor-exit v0

    return-wide p0

    .line 959
    :cond_f
    iget-wide p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide p0

    :catchall_13
    move-exception p0

    .line 960
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 7

    .line 777
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p1, :cond_19

    .line 779
    :try_start_6
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p1, "get authority syncable"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-nez p0, :cond_15

    .line 783
    monitor-exit v0

    return v1

    .line 785
    :cond_15
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p0

    .line 788
    :cond_19
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :cond_1f
    if-lez p1, :cond_3b

    add-int/lit8 p1, p1, -0x1

    .line 791
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 792
    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v2, :cond_1f

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 793
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 794
    iget p0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p0

    .line 797
    :cond_3b
    monitor-exit v0

    return v1

    :catchall_3d
    move-exception p0

    .line 798
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 7

    .line 1025
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1026
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "SyncManager"

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " auto - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    if-nez v1, :cond_34

    const/4 p0, 0x0

    goto :goto_38

    .line 1031
    :cond_34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_38
    monitor-exit v0

    return p0

    :cond_3a
    if-nez v1, :cond_3f

    .line 1034
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_43
    monitor-exit v0

    return p0

    :catchall_45
    move-exception p0

    .line 1035
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    .line 1561
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1562
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-nez v1, :cond_1d

    .line 1564
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v1, v0}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1565
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    :cond_1d
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v0, :cond_34

    .line 1569
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1570
    iget-object p0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v0
.end method

.method public final getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 3

    .line 1622
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    if-nez v0, :cond_14

    .line 1624
    new-instance v0, Landroid/content/SyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1625
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 9

    .line 1437
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_3c

    .line 1440
    :cond_a
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1441
    :try_start_d
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    .line 1443
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1444
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v5, :cond_34

    .line 1445
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1446
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1447
    monitor-exit v0

    return-object v4

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1450
    :cond_37
    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception p0

    .line 1451
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11

    .line 711
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    .line 713
    :try_start_7
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo p1, "getSyncAutomatically"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 716
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    monitor-exit v0

    return v1

    .line 719
    :cond_1d
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :cond_23
    if-lez v3, :cond_42

    add-int/lit8 v3, v3, -0x1

    .line 722
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 723
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-boolean v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_23

    .line 725
    monitor-exit v0

    return v1

    .line 728
    :cond_42
    monitor-exit v0

    return v2

    :catchall_44
    move-exception p0

    .line 729
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1f

    .line 1485
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1487
    :cond_1f
    monitor-exit v0

    return-object v2

    :catchall_21
    move-exception p0

    .line 1488
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getSyncRandomOffset()I
    .registers 1

    .line 619
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return p0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 9

    .line 1199
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    .line 1200
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "SyncManager"

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_23
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "insertStartSyncEvent"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_32

    const-wide/16 p0, -0x1

    .line 1205
    monitor-exit v0

    return-wide p0

    .line 1207
    :cond_32
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1209
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1210
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    const/4 v1, 0x0

    if-gez v4, :cond_4e

    .line 1211
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1212
    :cond_4e
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1213
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1214
    iget p2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1215
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1216
    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1217
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1218
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1219
    :goto_69
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_7f

    .line 1220
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 1222
    :cond_7f
    iget p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long p2, p2

    const-string v1, "SyncManager"

    .line 1223
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning historyId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_ae

    const/16 v0, 0x8

    .line 1226
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-wide p2

    :catchall_ae
    move-exception p0

    .line 1224
    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public isClockValid()Z
    .registers 1

    .line 2632
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return p0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 5

    .line 1055
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1056
    :try_start_3
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1057
    iget v2, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1058
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    .line 1059
    monitor-exit v0

    return p0

    .line 1062
    :cond_2c
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9

    .line 1456
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1457
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_35

    .line 1459
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1460
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v5, :cond_22

    goto :goto_32

    .line 1464
    :cond_22
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_32

    .line 1467
    :cond_2b
    iget-boolean v4, v4, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_32

    .line 1468
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1471
    :cond_35
    monitor-exit v0

    return v2

    :catchall_37
    move-exception p0

    .line 1472
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .registers 6

    .line 1067
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1068
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1072
    monitor-exit v0

    return-void

    .line 1074
    :cond_d
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 1075
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1076
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    const/4 p2, 0x2

    .line 1077
    invoke-virtual {p0, p2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 1076
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 3

    .line 1764
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "pending.bin"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1768
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 11

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    const/4 v5, 0x1

    if-ge v3, v1, :cond_4f

    .line 1782
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1784
    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_28

    goto :goto_4c

    .line 1791
    :cond_28
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    iget-boolean v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v8, :cond_30

    goto :goto_4c

    .line 1800
    :cond_30
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v8, v9, v7, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v6, "cleanup"

    .line 1804
    invoke-virtual {p0, v8, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    if-eqz v6, :cond_44

    goto :goto_4c

    :cond_44
    const/4 v4, -0x1

    .line 1809
    invoke-virtual {p0, v8, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1810
    iput-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move v4, v5

    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1814
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1815
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    move v4, v5

    goto :goto_53

    :cond_6c
    return v4
.end method

.method public final parseAuthority(Landroid/util/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SyncManager"

    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_a
    const-string/jumbo v0, "id"

    .line 1845
    invoke-interface {v2, v6, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_19

    :catch_12
    move-exception v0

    const-string v7, "error parsing the id of the authority"

    .line 1847
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    :goto_19
    if-ltz v0, :cond_17c

    const-string v7, "authority"

    .line 1850
    invoke-interface {v2, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "enabled"

    const/4 v9, 0x1

    .line 1851
    invoke-interface {v2, v6, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v10, "syncable"

    .line 1852
    invoke-interface {v2, v6, v10}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "account"

    .line 1853
    invoke-interface {v2, v6, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "type"

    .line 1854
    invoke-interface {v2, v6, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "user"

    const/4 v14, 0x0

    .line 1855
    invoke-interface {v2, v6, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v15, "package"

    .line 1856
    invoke-interface {v2, v6, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "class"

    .line 1857
    invoke-interface {v2, v6, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v12, :cond_5b

    if-nez v15, :cond_5b

    .line 1860
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "com.google"

    .line 1862
    :cond_5b
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const-string v9, "SyncManagerFile"

    const/4 v5, 0x2

    .line 1863
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    const-string v14, " syncable="

    const-string v5, " enabled="

    if-eqz v16, :cond_bd

    move-object/from16 v16, v4

    .line 1864
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "Adding authority: account="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accountType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_bd
    move/from16 v17, v0

    move-object/from16 v16, v4

    :goto_c1
    if-nez v6, :cond_137

    const/4 v0, 0x2

    .line 1875
    invoke-static {v9, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string v0, "Creating authority entry"

    .line 1876
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    if-eqz v11, :cond_137

    if-eqz v7, :cond_137

    .line 1879
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v7, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1882
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v2, v13}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 1883
    invoke-virtual {v3, v7, v13}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fb

    move/from16 v2, v17

    const/4 v3, 0x0

    .line 1884
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-lez p2, :cond_f9

    .line 1892
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_f9
    move-object v6, v0

    goto :goto_137

    :cond_fb
    const v1, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "35028827"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, -0x1

    .line 1895
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x1

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " provider:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_137
    :goto_137
    if-eqz v6, :cond_15a

    .line 1902
    iput-boolean v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v10, :cond_13f

    const/4 v3, -0x1

    goto :goto_143

    .line 1905
    :cond_13f
    :try_start_13f
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_143
    iput v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_145
    .catch Ljava/lang/NumberFormatException; {:try_start_13f .. :try_end_145} :catch_146

    goto :goto_17c

    :catch_146
    const-string/jumbo v0, "unknown"

    .line 1909
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    const/4 v1, -0x1

    .line 1910
    iput v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_17c

    .line 1912
    :cond_153
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1913
    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_17c

    .line 1918
    :cond_15a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure adding authority: auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17c
    :goto_17c
    return-object v6
.end method

.method public final parseExtra(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 7

    const/4 p0, 0x0

    const-string/jumbo v0, "name"

    .line 1958
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 1959
    invoke-interface {p1, p0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_f
    const-string/jumbo v2, "long"

    .line 1962
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_16} :catch_92

    const-string/jumbo v3, "value1"

    if-eqz v2, :cond_24

    .line 1963
    :try_start_1b
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9a

    :cond_24
    const-string/jumbo v2, "integer"

    .line 1964
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1965
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9a

    :cond_35
    const-string v2, "double"

    .line 1966
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1967
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9a

    :cond_45
    const-string v2, "float"

    .line 1968
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1969
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_9a

    :cond_55
    const-string v2, "boolean"

    .line 1970
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1971
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9a

    :cond_65
    const-string/jumbo v2, "string"

    .line 1972
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1973
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_76
    const-string v2, "account"

    .line 1974
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1975
    invoke-interface {p1, p0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value2"

    .line 1976
    invoke-interface {p1, p0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1977
    new-instance p1, Landroid/accounts/Account;

    invoke-direct {p1, v1, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_91} :catch_92

    goto :goto_9a

    :catch_92
    move-exception p0

    const-string p1, "SyncManager"

    const-string p2, "error parsing bundle value"

    .line 1980
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9a
    :goto_9a
    return-void
.end method

.method public final parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    move-object v2, p0

    .line 2243
    :goto_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    goto :goto_4

    :cond_12
    const-wide v2, 0x10900000002L

    .line 2248
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_1c
    const-wide v0, 0x10300000001L

    .line 2245
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    goto :goto_4

    :cond_26
    if-nez v2, :cond_29

    goto :goto_32

    .line 2251
    :cond_29
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_32
    return-object p0
.end method

.method public final parseListenForTickles(Landroid/util/TypedXmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "user"

    .line 1830
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v1

    const-string v2, "SyncManager"

    const-string v3, "error parsing the user for listen-for-tickles"

    .line 1834
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x1

    const-string v3, "enabled"

    .line 1836
    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 1837
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final parsePeriodicSync(Landroid/util/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 11

    const-string p0, "SyncManager"

    .line 1931
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    :try_start_8
    const-string/jumbo v1, "period"

    .line 1935
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_f} :catch_43

    :try_start_f
    const-string v1, "flex"

    .line 1941
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_15} :catch_17

    move-wide v6, p0

    goto :goto_31

    :catch_17
    move-exception p1

    .line 1943
    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v0

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error formatting value parsed for periodic sync flex, using default: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v6, v0

    .line 1948
    :goto_31
    new-instance p0, Landroid/content/PeriodicSync;

    iget-object p1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1953
    iget-object p1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :catch_43
    move-exception p1

    const-string p2, "error parsing the period of a periodic sync"

    .line 1937
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public queueBackup()V
    .registers 1

    const-string p0, "android"

    .line 2621
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final readAccountInfoLocked()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "No initial accounts"

    const-string v3, "Error reading accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1669
    :try_start_c
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_12} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_1a8
    .catchall {:try_start_c .. :try_end_12} :catchall_1a0

    const/4 v9, 0x2

    .line 1670
    :try_start_13
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_199
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_192
    .catchall {:try_start_13 .. :try_end_17} :catchall_18a

    if-eqz v10, :cond_44

    .line 1671
    :try_start_19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_33} :catch_3f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_33} :catch_3a
    .catchall {:try_start_19 .. :try_end_33} :catchall_34

    goto :goto_44

    :catchall_34
    move-exception v0

    move v2, v7

    move-object v6, v8

    :goto_37
    const/4 v5, -0x1

    goto/16 :goto_1e2

    :catch_3a
    move-exception v0

    move-object v6, v8

    const/4 v5, -0x1

    goto/16 :goto_1ae

    :catch_3f
    move-exception v0

    move-object v6, v8

    const/4 v5, -0x1

    goto/16 :goto_1cd

    .line 1673
    :cond_44
    :goto_44
    :try_start_44
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 1674
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v10
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_4c} :catch_199
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4c} :catch_192
    .catchall {:try_start_44 .. :try_end_4c} :catchall_18a

    :goto_4c
    if-eq v10, v9, :cond_55

    if-eq v10, v7, :cond_55

    .line 1677
    :try_start_50
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    goto :goto_4c

    :cond_55
    const/4 v11, 0x0

    if-ne v10, v7, :cond_69

    .line 1680
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_5b} :catch_3f
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5b} :catch_3a
    .catchall {:try_start_50 .. :try_end_5b} :catchall_34

    .line 1746
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v8, :cond_68

    .line 1749
    :try_start_65
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_68

    :catch_68
    :cond_68
    return-void

    .line 1684
    :cond_69
    :try_start_69
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "accounts"

    .line 1685
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_173

    const-string/jumbo v10, "listen-for-tickles"

    .line 1686
    invoke-interface {v0, v6, v10, v7}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v12, "version"

    .line 1688
    invoke-interface {v0, v6, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_83} :catch_199
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_83} :catch_192
    .catchall {:try_start_69 .. :try_end_83} :catchall_18a

    const/4 v13, 0x3

    if-ge v12, v13, :cond_88

    .line 1691
    :try_start_86
    iput-boolean v7, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z
    :try_end_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_88} :catch_3f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_88} :catch_3a
    .catchall {:try_start_86 .. :try_end_88} :catchall_34

    :cond_88
    :try_start_88
    const-string/jumbo v14, "nextAuthorityId"

    .line 1694
    invoke-interface {v0, v6, v14, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1695
    iget v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const-string/jumbo v14, "offsetInSeconds"

    .line 1697
    invoke-interface {v0, v6, v14, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_a0} :catch_199
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a0} :catch_192
    .catchall {:try_start_88 .. :try_end_a0} :catchall_18a

    if-nez v14, :cond_ba

    .line 1699
    :try_start_a2
    new-instance v14, Ljava/util/Random;
    :try_end_a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_a4} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a4} :catch_3a
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_34

    :try_start_a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v14, v6, v7}, Ljava/util/Random;-><init>(J)V

    const v6, 0x15180

    .line 1700
    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a4 .. :try_end_b4} :catch_3f
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b4} :catch_3a
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_b5

    goto :goto_ba

    :catchall_b5
    move-exception v0

    move-object v6, v8

    const/4 v2, 0x1

    goto/16 :goto_37

    .line 1702
    :cond_ba
    :goto_ba
    :try_start_ba
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1703
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    .line 1706
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_ce} :catch_199
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_ce} :catch_192
    .catchall {:try_start_ba .. :try_end_ce} :catchall_16b

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_d1
    if-ne v6, v9, :cond_f1

    .line 1709
    :try_start_d3
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1710
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v9, :cond_122

    const-string v5, "authority"

    .line 1711
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1712
    invoke-virtual {v1, v0, v12, v7}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Landroid/util/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v14

    if-eqz v14, :cond_f7

    .line 1715
    iget v5, v14, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v5, v15, :cond_f4

    move v15, v5

    const/4 v10, 0x0

    :cond_f1
    const/16 v17, -0x1

    goto :goto_150

    :cond_f4
    const/16 v17, -0x1

    goto :goto_111

    :cond_f7
    const v5, 0x534e4554

    new-array v6, v13, [Ljava/lang/Object;

    const-string v10, "26513719"

    aput-object v10, v6, v11

    const/16 v17, -0x1

    .line 1719
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v6, v16

    const-string v10, "Malformed authority"

    aput-object v10, v6, v9

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_111
    const/4 v10, 0x0

    goto :goto_150

    :cond_113
    const/16 v17, -0x1

    const-string/jumbo v5, "listenForTickles"

    .line 1722
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 1723
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Landroid/util/TypedXmlPullParser;)V

    goto :goto_150

    :cond_122
    const/16 v17, -0x1

    .line 1725
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v13, :cond_13a

    const-string/jumbo v5, "periodicSync"

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    if-eqz v14, :cond_150

    .line 1727
    invoke-virtual {v1, v0, v14}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Landroid/util/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v10

    goto :goto_150

    .line 1729
    :cond_13a
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_150

    if-eqz v10, :cond_150

    const-string v5, "extra"

    .line 1730
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 1731
    iget-object v5, v10, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v5}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 1735
    :cond_150
    :goto_150
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_154
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d3 .. :try_end_154} :catch_166
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_154} :catch_162
    .catchall {:try_start_d3 .. :try_end_154} :catchall_15d

    const/4 v5, 0x1

    if-ne v6, v5, :cond_15a

    move v2, v5

    move v5, v15

    goto :goto_178

    :cond_15a
    const/4 v9, 0x2

    goto/16 :goto_d1

    :catchall_15d
    move-exception v0

    move-object v6, v8

    move v5, v15

    goto/16 :goto_1e1

    :catch_162
    move-exception v0

    move-object v6, v8

    move v5, v15

    goto :goto_1ae

    :catch_166
    move-exception v0

    move-object v6, v8

    move v5, v15

    goto/16 :goto_1cd

    :catchall_16b
    move-exception v0

    const/16 v17, -0x1

    move-object v6, v8

    move/from16 v5, v17

    goto/16 :goto_1e1

    :cond_173
    const/16 v17, -0x1

    move v2, v7

    move/from16 v5, v17

    :goto_178
    add-int/2addr v5, v2

    .line 1746
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v8, :cond_186

    .line 1749
    :try_start_183
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_186

    .line 1755
    :catch_186
    :cond_186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    return-void

    :catchall_18a
    move-exception v0

    const/16 v17, -0x1

    move v2, v7

    move-object v6, v8

    move/from16 v5, v17

    goto :goto_1e2

    :catch_192
    move-exception v0

    const/16 v17, -0x1

    move-object v6, v8

    move/from16 v5, v17

    goto :goto_1ae

    :catch_199
    move-exception v0

    const/16 v17, -0x1

    move-object v6, v8

    move/from16 v5, v17

    goto :goto_1cd

    :catchall_1a0
    move-exception v0

    const/16 v17, -0x1

    move v2, v7

    move/from16 v5, v17

    const/4 v6, 0x0

    goto :goto_1e2

    :catch_1a8
    move-exception v0

    const/16 v17, -0x1

    move/from16 v5, v17

    const/4 v6, 0x0

    :goto_1ae
    if-nez v6, :cond_1b4

    .line 1742
    :try_start_1b0
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b7

    .line 1743
    :cond_1b4
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b7
    .catchall {:try_start_1b0 .. :try_end_1b7} :catchall_1e0

    :goto_1b7
    const/4 v2, 0x1

    add-int/2addr v5, v2

    .line 1746
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_1c6

    .line 1749
    :try_start_1c3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1c6

    :catch_1c6
    :cond_1c6
    return-void

    :catch_1c7
    move-exception v0

    const/16 v17, -0x1

    move/from16 v5, v17

    const/4 v6, 0x0

    .line 1739
    :goto_1cd
    :try_start_1cd
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d0
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_1e0

    const/4 v2, 0x1

    add-int/2addr v5, v2

    .line 1746
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_1df

    .line 1749
    :try_start_1dc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_1df

    :catch_1df
    :cond_1df
    return-void

    :catchall_1e0
    move-exception v0

    :goto_1e1
    const/4 v2, 0x1

    :goto_1e2
    add-int/2addr v5, v2

    .line 1746
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_1f0

    .line 1749
    :try_start_1ed
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f0} :catch_1f0

    .line 1753
    :catch_1f0
    :cond_1f0
    throw v0
.end method

.method public final readDayStatsLocked(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2506
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2509
    :cond_6
    :goto_6
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    goto :goto_6

    :cond_11
    const-wide v1, 0x20b00000001L

    .line 2511
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2512
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 2513
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2514
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2516
    array-length v1, v1

    if-ne p1, v1, :cond_6

    :cond_2a
    return-void
.end method

.method public final readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x10500000001L

    .line 2528
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 2530
    new-instance p0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    goto :goto_1b

    .line 2533
    :cond_15
    new-instance p0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2537
    :goto_1b
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_84

    const/4 v3, 0x1

    if-eq v2, v3, :cond_62

    const/4 v3, 0x2

    if-eq v2, v3, :cond_56

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_32

    goto :goto_1b

    :cond_32
    const-wide v2, 0x10300000005L

    .line 2560
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_1b

    :cond_3e
    const-wide v2, 0x10500000004L

    .line 2557
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    goto :goto_1b

    :cond_4a
    const-wide v2, 0x10300000003L

    .line 2554
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_1b

    :cond_56
    const-wide v2, 0x10500000002L

    .line 2551
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    goto :goto_1b

    :cond_62
    const-string v2, "SyncManager"

    const-string v3, "Failed to read the day via fast-path; some data might not have been read."

    .line 2540
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2543
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2544
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2545
    iget-wide v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2546
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2547
    iget-wide v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    move-object p0, v2

    goto :goto_1b

    :cond_84
    return-object p0
.end method

.method public final readStatisticsLocked()V
    .registers 3

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatisticsIfNeededLocked()V

    .line 2493
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 2497
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_27

    .line 2498
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readDayStatsLocked(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    if-eqz v0, :cond_2f

    .line 2499
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_27

    goto :goto_2f

    :catchall_1b
    move-exception p0

    if-eqz v0, :cond_26

    .line 2497
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    move-exception p0

    const-string v0, "SyncManager"

    const-string v1, "Unable to read day stats file."

    .line 2501
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final readStatsParcelLocked(Ljava/io/File;)V
    .registers 8

    const-string v0, "SyncManager"

    .line 2438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2440
    :try_start_6
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2441
    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p1

    .line 2442
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2443
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2446
    :cond_17
    :goto_17
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_73

    const/16 v2, 0x65

    const/16 v4, 0x64

    if-eq p1, v2, :cond_3b

    if-ne p1, v4, :cond_26

    goto :goto_3b

    .line 2463
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stats token: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 2448
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne p1, v4, :cond_45

    add-int/lit16 v2, v2, -0x7d9

    add-int/lit16 v2, v2, 0x37a5

    .line 2452
    :cond_45
    new-instance p1, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {p1, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2457
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v4, v2

    if-ge v3, v4, :cond_17

    .line 2458
    aput-object p1, v2, v3
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_69} :catch_6e
    .catchall {:try_start_6 .. :try_end_69} :catchall_6c

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :catchall_6c
    move-exception p0

    goto :goto_77

    :catch_6e
    :try_start_6e
    const-string p0, "No initial statistics"

    .line 2468
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_6c

    .line 2470
    :cond_73
    :goto_73
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_77
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    throw p0
.end method

.method public final readStatusInfoLocked(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2106
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2108
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_35

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    goto :goto_5

    :cond_10
    const-wide v1, 0x20b00000001L

    .line 2110
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2111
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;

    move-result-object p1

    .line 2112
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2113
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v1, 0x0

    .line 2114
    iput-boolean v1, p1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2115
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_35
    return-void
.end method

.method public readStatusLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatusIfNeededLocked()V

    .line 2093
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 2097
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_27

    .line 2098
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusInfoLocked(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    if-eqz v0, :cond_2f

    .line 2099
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_27

    goto :goto_2f

    :catchall_1b
    move-exception p0

    if-eqz v0, :cond_26

    .line 2097
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    move-exception p0

    const-string v0, "SyncManager"

    const-string v1, "Unable to read status info file."

    .line 2101
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final readStatusParcelLocked(Ljava/io/File;)V
    .registers 7

    const-string v0, "SyncManager"

    .line 2045
    :try_start_2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2046
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p1

    .line 2047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2048
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2049
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2051
    :cond_17
    :goto_17
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_56

    if-eqz p1, :cond_5b

    const/16 v2, 0x64

    if-ne p1, v2, :cond_41

    .line 2054
    :try_start_21
    new-instance p1, Landroid/content/SyncStatusInfo;

    invoke-direct {p1, v1}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2055
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_17

    .line 2056
    iput-boolean v3, p1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2057
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v2, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_39} :catch_3a

    goto :goto_17

    :catch_3a
    move-exception p1

    :try_start_3b
    const-string v2, "Unable to parse some sync status."

    .line 2060
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 2064
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown status token: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_55} :catch_56

    goto :goto_5b

    :catch_56
    const-string p0, "No initial status"

    .line 2069
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x10500000002L

    .line 2126
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 2128
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    goto :goto_1b

    .line 2131
    :cond_16
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2136
    :goto_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    .line 2138
    :goto_21
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_141

    const-string v7, "SyncManager"

    packed-switch v6, :pswitch_data_146

    goto :goto_21

    :pswitch_2e
    const-wide v8, 0x20300000012L

    .line 2222
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2224
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v10, v6

    if-ne v5, v10, :cond_42

    const-string v6, "Attempted to read more per source last failure times than expected; data might be corrupted."

    .line 2225
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2229
    :cond_42
    aput-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :pswitch_47
    const-wide v8, 0x20300000011L

    .line 2211
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2213
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v10, v6

    if-ne v3, v10, :cond_5b

    const-string v6, "Attempted to read more per source last success times than expected; data might be corrupted."

    .line 2214
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2218
    :cond_5b
    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :pswitch_60
    const-wide v6, 0x10b00000010L

    .line 2205
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2207
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2208
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_21

    :pswitch_72
    const-wide v6, 0x10b0000000fL

    .line 2199
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2201
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2202
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_21

    :pswitch_84
    const-wide v6, 0x10b0000000eL

    .line 2193
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2195
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2196
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_21

    :pswitch_96
    const-wide v6, 0x1030000000dL

    .line 2189
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    goto/16 :goto_21

    :pswitch_a3
    const-wide v6, 0x20b0000000cL

    .line 2181
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2182
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_b5

    .line 2184
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    :cond_b5
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_21

    :pswitch_ba
    const-wide v6, 0x2030000000bL

    .line 2178
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 2177
    invoke-virtual {v2, v6, v7}, Landroid/content/SyncStatusInfo;->addPeriodicSyncTime(J)V

    goto/16 :goto_21

    :pswitch_c8
    const-wide v6, 0x1080000000aL

    .line 2174
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_21

    :pswitch_d5
    const-wide v6, 0x10800000009L

    .line 2171
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_21

    :pswitch_e2
    const-wide v6, 0x10300000008L

    .line 2167
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    goto/16 :goto_21

    :pswitch_ef
    const-wide v6, 0x10900000007L

    .line 2163
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_fc
    const-wide v6, 0x10500000006L

    .line 2159
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    goto/16 :goto_21

    :pswitch_109
    const-wide v6, 0x10300000005L

    .line 2155
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    goto/16 :goto_21

    :pswitch_116
    const-wide v6, 0x10500000004L

    .line 2151
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    goto/16 :goto_21

    :pswitch_123
    const-wide v6, 0x10300000003L

    .line 2147
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto/16 :goto_21

    :pswitch_130
    const-string v6, "Failed to read the authority id via fast-path; some data might not have been read."

    .line 2141
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    new-instance v6, Landroid/content/SyncStatusInfo;

    .line 2144
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v6, v7, v2}, Landroid/content/SyncStatusInfo;-><init>(ILandroid/content/SyncStatusInfo;)V

    move-object v2, v6

    goto/16 :goto_21

    .line 2233
    :cond_141
    invoke-virtual {v2, v4}, Landroid/content/SyncStatusInfo;->populateLastEventsInformation(Ljava/util/ArrayList;)V

    return-object v2

    nop

    :pswitch_data_146
    .packed-switch 0x2
        :pswitch_130
        :pswitch_123
        :pswitch_116
        :pswitch_109
        :pswitch_fc
        :pswitch_ef
        :pswitch_e2
        :pswitch_d5
        :pswitch_c8
        :pswitch_ba
        :pswitch_a3
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_47
        :pswitch_2e
    .end packed-switch
.end method

.method public final readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2259
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    packed-switch p0, :pswitch_data_82

    :pswitch_7
    goto :goto_0

    :pswitch_8
    const-wide v0, 0x1050000000aL

    .line 2295
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_0

    :pswitch_14
    const-wide v0, 0x10500000009L

    .line 2291
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_0

    :pswitch_20
    const-wide v0, 0x10500000008L

    .line 2287
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    goto :goto_0

    :pswitch_2c
    const-wide v0, 0x10500000007L

    .line 2283
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    goto :goto_0

    :pswitch_38
    const-wide v0, 0x10500000006L

    .line 2279
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    goto :goto_0

    :pswitch_44
    const-wide v0, 0x10500000005L

    .line 2275
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    goto :goto_0

    :pswitch_50
    const-wide v0, 0x10500000004L

    .line 2272
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    goto :goto_0

    :pswitch_5c
    const-wide v0, 0x10500000003L

    .line 2268
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    goto :goto_0

    :pswitch_68
    const-wide v0, 0x10500000002L

    .line 2265
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    goto :goto_0

    :pswitch_74
    const-wide v0, 0x10300000001L

    .line 2261
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    goto :goto_0

    :pswitch_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch -0x1
        :pswitch_80
        :pswitch_7
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
        :pswitch_14
        :pswitch_8
    .end packed-switch
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7

    .line 1175
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    .line 1176
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "SyncManager"

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1182
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_4c

    .line 1184
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    :catchall_4c
    move-exception p0

    .line 1182
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6

    .line 1594
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1595
    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1596
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 7

    .line 1606
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_2e

    .line 1608
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p1, :cond_2e

    .line 1610
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz p2, :cond_22

    .line 1611
    iget-object p3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1613
    :cond_22
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_2e

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_2e
    return-void
.end method

.method public removeStaleAccounts([Landroid/accounts/Account;I)V
    .registers 11

    .line 1085
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    .line 1086
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    .line 1087
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1090
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1091
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1092
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1093
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v6, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v6, p2, :cond_35

    goto :goto_22

    :cond_35
    if-eqz p1, :cond_3f

    .line 1096
    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1097
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    :cond_3f
    const-string v5, "SyncManager"

    .line 1099
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string v5, "SyncManager"

    .line 1100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_5f
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1103
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_69

    .line 1105
    :cond_7b
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 1110
    :cond_7f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_e2

    :cond_85
    if-lez p1, :cond_d9

    add-int/lit8 p1, p1, -0x1

    .line 1114
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1115
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1116
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v3, :cond_9c

    .line 1117
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v3, v2}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1119
    :cond_9c
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1120
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :cond_a7
    :goto_a7
    if-lez v2, :cond_bd

    add-int/lit8 v2, v2, -0x1

    .line 1123
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, p2, :cond_a7

    .line 1124
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a7

    .line 1127
    :cond_bd
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_c3
    :goto_c3
    if-lez v2, :cond_85

    add-int/lit8 v2, v2, -0x1

    .line 1130
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v3, p2, :cond_c3

    .line 1131
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c3

    .line 1135
    :cond_d9
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1139
    :cond_e2
    monitor-exit v0

    return-void

    :catchall_e4
    move-exception p0

    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_3 .. :try_end_e6} :catchall_e4

    throw p0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 632
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 3

    const/4 v0, 0x4

    .line 1191
    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6

    .line 659
    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_12

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_12

    .line 662
    :cond_9
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 665
    :goto_13
    iget p2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-void
.end method

.method public reportChange(ILjava/lang/String;I)V
    .registers 11

    .line 670
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-lez v1, :cond_4a

    add-int/lit8 v1, v1, -0x1

    .line 674
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 675
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 676
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 677
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_a

    if-eq p3, v6, :cond_2c

    goto :goto_a

    :cond_2c
    if-eqz p2, :cond_37

    .line 681
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p2, v5, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_a

    :cond_37
    if-nez v2, :cond_3e

    .line 686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    :cond_3e
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 690
    :cond_4a
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 691
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_8d

    const-string p0, "SyncManager"

    const/4 p2, 0x2

    .line 693
    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_78

    const-string p0, "SyncManager"

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reportChange "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    if-eqz v2, :cond_8c

    .line 698
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :catch_7e
    :goto_7e
    if-lez p0, :cond_8c

    add-int/lit8 p0, p0, -0x1

    .line 702
    :try_start_82
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ISyncStatusObserver;

    invoke-interface {p2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_7e

    goto :goto_7e

    :cond_8c
    return-void

    :catchall_8d
    move-exception p0

    .line 691
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public final requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V
    .registers 16

    .line 2423
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_1c

    .line 2425
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, v2

    move-object v1, v3

    move v2, p3

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_1f

    .line 2429
    :cond_1c
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1f
    return-void
.end method

.method public final requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V
    .registers 16

    .line 2403
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_17

    .line 2405
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_34

    .line 2408
    :cond_17
    new-instance p0, Landroid/content/SyncRequest$Builder;

    invoke-direct {p0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2410
    invoke-virtual {p0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object p0

    .line 2411
    invoke-virtual {p0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object p0

    .line 2412
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2413
    invoke-virtual {p0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    :goto_34
    return-void
.end method

.method public resetTodayStats(Z)V
    .registers 7

    if-eqz p1, :cond_9

    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    .line 2637
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2640
    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    .line 2642
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2643
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2645
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2646
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public restoreAllPeriodicSyncs()Z
    .registers 13

    .line 983
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 986
    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 987
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 988
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 989
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    .line 990
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    goto :goto_1f

    .line 993
    :cond_39
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 995
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 996
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 16

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 858
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "SyncManager"

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_30
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 864
    :try_start_33
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v9, 0x1

    if-eqz v2, :cond_56

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_3d

    goto :goto_56

    :cond_3d
    const/4 v1, -0x1

    .line 874
    invoke-virtual {p0, p1, v1, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 875
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_50

    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_50

    const/4 p2, 0x0

    goto :goto_61

    .line 879
    :cond_50
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 880
    iput-wide p4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move p2, v9

    goto :goto_61

    .line 867
    :cond_56
    :goto_56
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result p2

    .line 884
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_33 .. :try_end_62} :catchall_68

    if-eqz p2, :cond_67

    .line 886
    invoke-virtual {p0, v9, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_67
    return-void

    :catchall_68
    move-exception p0

    .line 884
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public final setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 13

    .line 902
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_2a

    .line 903
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v2, :cond_2a

    goto :goto_b

    .line 907
    :cond_2a
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p3, :cond_4d

    .line 908
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 909
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_34

    .line 912
    :cond_4d
    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v3, v3, p4

    if-nez v3, :cond_59

    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v3, v3, p6

    if-eqz v3, :cond_34

    .line 914
    :cond_59
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 915
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v0, 0x1

    goto :goto_34

    :cond_5f
    return v0
.end method

.method public setClockValid()V
    .registers 2

    .line 2625
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 2626
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    const-string p0, "SyncManager"

    const-string v0, "Clock is valid now."

    .line 2627
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 9

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    .line 964
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "SyncManager"

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_28
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 969
    :try_start_2d
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 970
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_39

    .line 971
    monitor-exit v0

    return-void

    .line 973
    :cond_39
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 974
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_40

    .line 975
    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    :catchall_40
    move-exception p0

    .line 974
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .registers 8

    .line 803
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .registers 18

    move-object v0, p0

    move v10, p2

    .line 1002
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Set master enabled="

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, " user="

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    const-string v4, " cuid="

    aput-object v4, v2, v3

    .line 1003
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    const-string v4, " cpid="

    aput-object v4, v2, v3

    .line 1004
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 1002
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1005
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1006
    :try_start_3e
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_54

    .line 1007
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1008
    monitor-exit v1

    return-void

    .line 1010
    :cond_54
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1012
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_84

    if-eqz p1, :cond_75

    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    .line 1014
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v3, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    :cond_75
    const/4 v1, 0x0

    .line 1018
    invoke-virtual {p0, v11, v1, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 1020
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    :catchall_84
    move-exception v0

    .line 1012
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_6

    .line 589
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    :cond_6
    return-void
.end method

.method public setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 583
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    :cond_6
    return-void
.end method

.method public setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .registers 2

    .line 594
    sget-object p0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez p0, :cond_6

    .line 595
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    :cond_6
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .registers 20

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move/from16 v1, p4

    const-string v4, "SyncManager"

    const/4 v6, 0x2

    .line 734
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "SyncManager"

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncAutomatically:  provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_36
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Set sync auto account="

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v10, 0x1

    aput-object v2, v7, v10

    const-string v8, " user="

    aput-object v8, v7, v6

    const/4 v8, 0x3

    .line 739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, " authority="

    aput-object v11, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    const-string v11, " value="

    aput-object v11, v7, v8

    const/4 v8, 0x7

    .line 741
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    const/16 v8, 0x8

    const-string v11, " cuid="

    aput-object v11, v7, v8

    const/16 v8, 0x9

    .line 742
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/16 v8, 0xa

    const-string v11, " cpid="

    aput-object v11, v7, v8

    const/16 v8, 0xb

    .line 743
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    .line 738
    invoke-virtual {v4, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 746
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 747
    :try_start_85
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v7, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v8, -0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v11

    .line 751
    iget-boolean v7, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v7, v1, :cond_b9

    const-string v0, "SyncManager"

    .line 752
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, "SyncManager"

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", doing nothing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_b7
    monitor-exit v4

    return-void

    :cond_b9
    if-eqz v1, :cond_c1

    .line 760
    iget v7, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v7, v6, :cond_c1

    .line 761
    iput v8, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 763
    :cond_c1
    iput-boolean v1, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 764
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 765
    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_85 .. :try_end_c7} :catchall_e5

    if-eqz v1, :cond_dc

    const/4 v4, -0x6

    .line 768
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 772
    :cond_dc
    iget-object v1, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, v10, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    :catchall_e5
    move-exception v0

    .line 765
    :try_start_e6
    monitor-exit v4
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0
.end method

.method public final setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .registers 14

    .line 816
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Set syncable "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v8, 0x1

    aput-object p1, v2, v8

    const-string v3, " value="

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v6, " cuid="

    aput-object v6, v2, v3

    .line 817
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x5

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const-string v6, " cpid="

    aput-object v6, v2, v3

    .line 818
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x7

    aput-object v3, v2, v6

    .line 816
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, -0x1

    .line 820
    :try_start_39
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    if-ge p2, v2, :cond_40

    goto :goto_41

    :cond_40
    move v2, p2

    :goto_41
    const-string v4, "SyncManager"

    .line 824
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string v4, "SyncManager"

    .line 825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setIsSyncable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_6c
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v2, :cond_96

    const-string v0, "SyncManager"

    .line 828
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "SyncManager"

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", doing nothing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_94
    monitor-exit v1

    return-void

    .line 833
    :cond_96
    iput v2, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 834
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 835
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_39 .. :try_end_9c} :catchall_b3

    if-ne v2, v8, :cond_af

    const/4 v4, -0x5

    .line 837
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    .line 840
    :cond_af
    invoke-virtual {p0, v8, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    :catchall_b3
    move-exception v0

    .line 835
    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .registers 1

    .line 1639
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return p0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJLjava/lang/String;I)V
    .registers 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 1233
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_b
    const-string v7, "SyncManager"

    const/4 v8, 0x2

    .line 1234
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string v7, "SyncManager"

    .line 1235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_2b
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_31
    if-lez v7, :cond_45

    add-int/lit8 v7, v7, -0x1

    .line 1241
    iget-object v10, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1242
    iget v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v11, v11

    cmp-long v11, v11, v1

    if-nez v11, :cond_31

    goto :goto_46

    :cond_45
    const/4 v10, 0x0

    :goto_46
    if-nez v10, :cond_61

    const-string v0, "SyncManager"

    .line 1249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSyncEvent: no history for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    monitor-exit v6

    return-void

    .line 1253
    :cond_61
    iput-wide v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    const/4 v1, 0x1

    .line 1254
    iput v1, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1255
    iput-object v5, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-wide/from16 v11, p6

    .line 1256
    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v11, p8

    .line 1257
    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1259
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1263
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1264
    iget-object v12, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v13, v12, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v13, v1

    iput v13, v12, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1265
    iget-wide v13, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v13, v3

    iput-wide v13, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1266
    iget-wide v13, v12, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v13, v3

    iput-wide v13, v12, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1267
    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    if-eqz v13, :cond_df

    if-eq v13, v1, :cond_d4

    if-eq v13, v8, :cond_c9

    const/4 v14, 0x3

    if-eq v13, v14, :cond_be

    const/4 v14, 0x4

    if-eq v13, v14, :cond_b3

    const/4 v14, 0x5

    if-eq v13, v14, :cond_a8

    goto :goto_e9

    .line 1289
    :cond_a8
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1290
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_e9

    .line 1285
    :cond_b3
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1286
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_e9

    .line 1277
    :cond_be
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1278
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    goto :goto_e9

    .line 1273
    :cond_c9
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1274
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    goto :goto_e9

    .line 1269
    :cond_d4
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1270
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    goto :goto_e9

    .line 1281
    :cond_df
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1282
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1295
    :goto_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v7

    .line 1296
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v13, v12, v11

    if-nez v13, :cond_fb

    .line 1297
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    goto :goto_10f

    .line 1298
    :cond_fb
    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v7, v13, :cond_10f

    .line 1299
    array-length v13, v12

    sub-int/2addr v13, v1

    invoke-static {v12, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1300
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    move v7, v1

    goto :goto_110

    :cond_10f
    :goto_10f
    move v7, v11

    .line 1304
    :goto_110
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v12, v12, v11

    .line 1306
    iget-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v13, v3

    const-string/jumbo v15, "success"

    .line 1308
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_13f

    .line 1310
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_12e

    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_12f

    :cond_12e
    move v11, v1

    .line 1313
    :cond_12f
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1314
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1315
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_17b

    :cond_13f
    const-string v8, "canceled"

    .line 1316
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16c

    .line 1317
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-nez v8, :cond_14e

    move v11, v1

    .line 1320
    :cond_14e
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1321
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1323
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14, v5}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1325
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1326
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_17b

    .line 1329
    :cond_16c
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1330
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    move v11, v1

    .line 1333
    :goto_17b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Source="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v12, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v5, v5, v12

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Elapsed="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-static {v8, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    const-string v3, " Reason="

    .line 1337
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v3, :cond_1d9

    const-string v3, " Exemption="

    .line 1340
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eq v3, v1, :cond_1d4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1cd

    .line 1349
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1d9

    :cond_1cd
    const-string/jumbo v3, "top"

    .line 1346
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d9

    :cond_1d4
    const-string v3, "fg"

    .line 1343
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d9
    :goto_1d9
    const-string v3, " Extras="

    .line 1353
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    iget-object v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1356
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    if-eqz v11, :cond_1f0

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_204

    .line 1360
    :cond_1f0
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_204

    .line 1361
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_204
    :goto_204
    if-eqz v7, :cond_20a

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_21f

    .line 1366
    :cond_20a
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_21f

    .line 1367
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1370
    :cond_21f
    :goto_21f
    monitor-exit v6
    :try_end_220
    .catchall {:try_start_b .. :try_end_220} :catchall_22a

    const/16 v1, 0x8

    move-object/from16 v2, p10

    move/from16 v3, p11

    .line 1372
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-void

    :catchall_22a
    move-exception v0

    .line 1370
    :try_start_22b
    monitor-exit v6
    :try_end_22c
    .catchall {:try_start_22b .. :try_end_22c} :catchall_22a

    throw v0
.end method

.method public final upgradeStatisticsIfNeededLocked()V
    .registers 4

    .line 2475
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "stats.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2476
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2477
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatsParcelLocked(Ljava/io/File;)V

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 2482
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 2483
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    return-void
.end method

.method public final upgradeStatusIfNeededLocked()V
    .registers 4

    .line 2074
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "status.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2076
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusParcelLocked(Ljava/io/File;)V

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2081
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 2082
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    return-void
.end method

.method public final writeAccountInfoLocked()V
    .registers 14

    const-string/jumbo v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    .line 1988
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v3, 0x0

    .line 1994
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_e7

    .line 1995
    :try_start_31
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 1996
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 1997
    invoke-interface {v5, v6, v7}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1999
    invoke-interface {v5, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    .line 2000
    invoke-interface {v5, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "nextAuthorityId"

    .line 2001
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-interface {v5, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "offsetInSeconds"

    .line 2002
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-interface {v5, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_61} :catch_e4

    const/4 v7, 0x0

    move v8, v7

    :goto_63
    const-string v9, "enabled"

    const-string/jumbo v10, "user"

    if-ge v8, v6, :cond_8b

    .line 2007
    :try_start_6a
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 2008
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 2009
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2010
    invoke-interface {v5, v3, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2011
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v5, v3, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_63

    .line 2015
    :cond_8b
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_91
    if-ge v7, v0, :cond_d8

    .line 2017
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2018
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2019
    invoke-interface {v5, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "id"

    .line 2020
    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-interface {v5, v3, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    iget v11, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-interface {v5, v3, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    iget-boolean v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-interface {v5, v3, v9, v11}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "account"

    .line 2023
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "type"

    .line 2024
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2025
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v5, v3, v2, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "syncable"

    .line 2026
    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-interface {v5, v3, v8, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    invoke-interface {v5, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    .line 2029
    :cond_d8
    invoke-interface {v5, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2030
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2031
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_e3} :catch_e4

    goto :goto_f6

    :catch_e4
    move-exception v0

    move-object v3, v4

    goto :goto_e8

    :catch_e7
    move-exception v0

    :goto_e8
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    .line 2033
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_f6

    .line 2035
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method public writeAllState()V
    .registers 2

    .line 1631
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1633
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1635
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final writeDayStatsLocked(Ljava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2597
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2598
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_53

    .line 2600
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_12

    goto :goto_53

    :cond_12
    const-wide v3, 0x20b00000001L

    .line 2604
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 2606
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 2607
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000003L

    .line 2608
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000004L

    .line 2609
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000005L

    .line 2610
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2611
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2613
    :cond_53
    :goto_53
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeStatisticsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    .line 2573
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "SyncManager"

    if-eqz v0, :cond_25

    .line 2574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2583
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_31} :catch_48
    .catchall {:try_start_2b .. :try_end_31} :catchall_43

    .line 2584
    :try_start_31
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeDayStatsLocked(Ljava/io/OutputStream;)V

    .line 2585
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_39} :catch_41
    .catchall {:try_start_31 .. :try_end_39} :catchall_3f

    .line 2591
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_56

    :catchall_3f
    move-exception v0

    goto :goto_57

    :catch_41
    move-exception v0

    goto :goto_4c

    :catchall_43
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_57

    :catch_48
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4c
    :try_start_4c
    const-string v3, "Unable to write day stats to proto."

    .line 2588
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_3f

    .line 2591
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_56
    return-void

    :goto_57
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2592
    throw v0
.end method

.method public final writeStatusInfoLocked(Ljava/io/OutputStream;)V
    .registers 16

    .line 2332
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2333
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, p1, :cond_12c

    .line 2335
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    const-wide v4, 0x20b00000001L

    .line 2336
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000002L

    .line 2338
    iget v8, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000003L

    .line 2339
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000004L

    .line 2340
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000005L

    .line 2341
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000006L

    .line 2342
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10900000007L

    .line 2343
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10300000008L

    .line 2344
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10800000009L

    .line 2345
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x1080000000aL

    .line 2346
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2347
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTimesSize()I

    move-result v6

    move v7, v1

    :goto_7f
    if-ge v7, v6, :cond_90

    const-wide v8, 0x2030000000bL

    .line 2350
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v10

    .line 2349
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7f

    .line 2352
    :cond_90
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    move v7, v1

    :goto_95
    if-ge v7, v6, :cond_be

    const-wide v8, 0x20b0000000cL

    .line 2354
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10300000001L

    .line 2356
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v12

    .line 2355
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10900000002L

    .line 2357
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2358
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    :cond_be
    const-wide v6, 0x1030000000dL

    .line 2360
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10b0000000eL

    .line 2362
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2363
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2364
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10b0000000fL

    .line 2365
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2366
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2367
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10b00000010L

    .line 2368
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2370
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2371
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2373
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v6, v6

    move v7, v1

    :goto_ff
    if-ge v7, v6, :cond_110

    const-wide v8, 0x20300000011L

    .line 2375
    iget-object v10, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v10, v10, v7

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    .line 2378
    :cond_110
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v6, v6

    move v7, v1

    :goto_114
    if-ge v7, v6, :cond_125

    const-wide v8, 0x20300000012L

    .line 2380
    iget-object v10, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v10, v10, v7

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_114

    .line 2383
    :cond_125
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 2385
    :cond_12c
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeStatusLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    .line 2309
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_23
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2319
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_30} :catch_45
    .catchall {:try_start_2a .. :try_end_30} :catchall_40

    .line 2320
    :try_start_30
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatusInfoLocked(Ljava/io/OutputStream;)V

    .line 2321
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_38} :catch_3e
    .catchall {:try_start_30 .. :try_end_38} :catchall_56

    .line 2327
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_55

    :catch_3e
    move-exception v0

    goto :goto_49

    :catchall_40
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_57

    :catch_45
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_49
    :try_start_49
    const-string v2, "SyncManager"

    const-string v3, "Unable to write sync status to proto."

    .line 2324
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_56

    .line 2327
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_55
    return-void

    :catchall_56
    move-exception v0

    :goto_57
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2328
    throw v0
.end method

.method public final writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .registers 7

    .line 2389
    iget-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2390
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2391
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2392
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2393
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const-wide v0, 0x10500000005L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2394
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2395
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const-wide v0, 0x10500000007L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2396
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const-wide v0, 0x10500000008L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2397
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const-wide v0, 0x10500000009L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2398
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const-wide v0, 0x1050000000aL

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method
