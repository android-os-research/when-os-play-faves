.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$AutoCorker;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field private static final blacklist NONCE_UNSET:I = 0x0

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist VERIFY:Z = false

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sCorkedInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static volatile blacklist sTesting:Z

.field private static final blacklist sTestingPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private volatile blacklist mPropertyHandle:Landroid/os/SystemProperties$Handle;

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkedInvalidates()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 372
    const-string/jumbo v0, "unset"

    const-string v1, "disabled"

    const-string v2, "corked"

    const-string v3, "bypass"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    .line 414
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    .line 440
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    .line 601
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 514
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-direct {p0, p1, p2, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "maxEntries"    # I
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;

    .line 529
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 383
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 386
    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_3a

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 389
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 392
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 395
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 442
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 487
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 530
    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 531
    iput-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 532
    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 533
    new-instance v0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 534
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 535
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 536
    return-void

    :array_3a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 9
    .param p1, "maxEntries"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p5, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<TQuery;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 383
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 386
    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_3a

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    .line 389
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    .line 392
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    .line 395
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 442
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    .line 487
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 553
    invoke-static {p2, p3}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 554
    iput-object p4, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    .line 555
    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    .line 556
    iput-object p5, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 557
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 558
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    .line 559
    return-void

    nop

    :array_3a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 1374
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2d

    aget-object v3, p0, v2

    .line 1375
    .local v3, "a":Ljava/lang/String;
    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1376
    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2b

    .line 1374
    .end local v3    # "a":Ljava/lang/String;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1377
    .restart local v3    # "a":Ljava/lang/String;
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0

    .line 1380
    .end local v3    # "a":Ljava/lang/String;
    :cond_2d
    return v1
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "contains"    # Z

    .line 1387
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "value":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 1390
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 1392
    :cond_15
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1395
    .end local v0    # "value":Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .registers 10
    .param p0, "name"    # Ljava/lang/String;

    .line 1078
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_5

    .line 1083
    return-void

    .line 1086
    :cond_5
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_8
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1101
    .local v2, "numberCorks":I
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-nez v2, :cond_31

    .line 1102
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v7

    .line 1103
    .local v7, "nonce":J
    cmp-long v5, v7, v5

    if-eqz v5, :cond_30

    cmp-long v3, v7, v3

    if-eqz v3, :cond_30

    .line 1104
    const-wide/16 v3, 0x2

    invoke-static {p0, v3, v4}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    .line 1106
    .end local v7    # "nonce":J
    :cond_30
    goto :goto_49

    .line 1107
    :cond_31
    sget-object v7, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, p0, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1108
    .local v5, "count":J
    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .end local v5    # "count":J
    :goto_49
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    nop

    .end local v2    # "numberCorks":I
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    new-instance v0, Landroid/app/PropertyInvalidatedCache$1;

    const/4 v1, 0x2

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/PropertyInvalidatedCache$1;-><init>(Landroid/app/PropertyInvalidatedCache;IFZ)V

    return-object v0
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "apiName"    # Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 330
    .local v0, "api":[C
    const/4 v1, 0x0

    .line 331
    .local v1, "upper":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 332
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 333
    add-int/lit8 v1, v1, 0x1

    .line 331
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 336
    .end local v2    # "i":I
    :cond_16
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    .line 337
    .local v2, "suffix":[C
    const/4 v3, 0x0

    .line 338
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_56

    .line 339
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 340
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 341
    if-lez v4, :cond_38

    .line 342
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    const/16 v6, 0x5f

    aput-char v6, v2, v3

    move v3, v5

    .line 344
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_38
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v2, v3

    move v3, v5

    goto :goto_4b

    .line 346
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_44
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v6, v0, v4

    aput-char v6, v2, v3

    move v3, v5

    .line 338
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 349
    :cond_4e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid api name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 353
    .end local v4    # "i":I
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .registers 1
    .param p0, "cacheName"    # Ljava/lang/String;

    .line 826
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public static blacklist disableForTestMode()V
    .registers 2

    .line 1326
    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    .line 1328
    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 777
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    .line 780
    .local v2, "cache":Landroid/app/PropertyInvalidatedCache;
    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 781
    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 783
    .end local v2    # "cache":Landroid/app/PropertyInvalidatedCache;
    :cond_29
    goto :goto_12

    .line 784
    :cond_2a
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private static blacklist disableSystemWide(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 973
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_5

    .line 974
    return-void

    .line 976
    :cond_5
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    .line 977
    return-void
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1527
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1528
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1529
    .local v1, "bout":Ljava/io/PrintWriter;
    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1534
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1535
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1536
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1537
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_23

    .line 1540
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2b

    .line 1538
    :catch_23
    move-exception v2

    .line 1539
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PropertyInvalidatedCache"

    const-string v4, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2b
    return-void
.end method

.method private static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1492
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_a

    .line 1493
    const-string v0, "  Caching is disabled in this process."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    return-void

    .line 1499
    :cond_a
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    .line 1502
    .local v0, "detail":Z
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_11
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v2

    .line 1504
    .local v2, "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    if-nez v0, :cond_1a

    .line 1505
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->dumpCorkInfo(Ljava/io/PrintWriter;)V

    .line 1507
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2f

    .line 1509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 1510
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    .line 1511
    .local v3, "currentCache":Landroid/app/PropertyInvalidatedCache;
    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 1509
    .end local v3    # "currentCache":Landroid/app/PropertyInvalidatedCache;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1513
    .end local v1    # "i":I
    :cond_2e
    return-void

    .line 1507
    .end local v2    # "activeCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PropertyInvalidatedCache;>;"
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "detailed"    # Z
    .param p3, "args"    # [Ljava/lang/String;

    .line 1417
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p2, :cond_f

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1418
    return-void

    .line 1417
    :cond_f
    move-object/from16 v3, p3

    .line 1423
    :cond_11
    sget-object v4, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1424
    :try_start_14
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1425
    .local v8, "invalidateCount":J
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1426
    .local v5, "corkedInvalidates":J
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_19e

    .line 1428
    iget-object v7, v1, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1429
    :try_start_3e
    const-string v0, "  Cache Name: %s"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    const-string v0, "    Property: %s"

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v11, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v10, 0x2

    aget-wide v13, v0, v10

    aget-wide v15, v0, v12

    add-long/2addr v13, v15

    aget-wide v15, v0, v4

    add-long/2addr v13, v15

    const/4 v11, 0x3

    aget-wide v15, v0, v11

    add-long/2addr v13, v15

    .line 1433
    .local v13, "skips":J
    const-string v0, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d"

    const/4 v15, 0x4

    new-array v11, v15, [Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_3e .. :try_end_74} :catchall_196

    move-wide/from16 v17, v5

    .end local v5    # "corkedInvalidates":J
    .local v17, "corkedInvalidates":J
    :try_start_76
    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mHits:J

    .line 1435
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v12

    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v11, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v10

    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v11, v5

    .line 1433
    invoke-static {v0, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const-string v0, "    Skip-corked: %d, Skip-unset: %d, Skip-bypass: %d, Skip-other: %d"

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v19, v5, v10

    .line 1438
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v19, v5, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v11, 0x3

    aget-wide v19, v5, v11

    .line 1439
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v6, 0x1

    aget-wide v19, v5, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v4, v11

    .line 1436
    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    const-string v0, "    Nonce: 0x%016x, Invalidates: %d, CorkedInvalidates: %d"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;
    :try_end_d9
    .catchall {:try_start_76 .. :try_end_d9} :catchall_193

    move-object v11, v7

    :try_start_da
    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 1442
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    aput-object v6, v5, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v10

    .line 1440
    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const-string v0, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    .line 1445
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    iget v5, v1, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v10

    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    .line 1443
    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const-string v0, "    Enabled: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-boolean v4, v1, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v4, :cond_133

    const-string v4, "false"

    goto :goto_136

    :cond_133
    const-string/jumbo v4, "true"

    :goto_136
    aput-object v4, v5, v12

    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    if-nez p2, :cond_148

    .line 1452
    monitor-exit v11

    return-void

    .line 1454
    :cond_148
    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1455
    .local v0, "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_156

    .line 1456
    monitor-exit v11

    return-void

    .line 1459
    :cond_156
    const-string v4, "    Contents:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_191

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1461
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1462
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1464
    .local v15, "value":Ljava/lang/String;
    const-string v6, "      Key: %s\n      Value: %s\n"

    new-array v12, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v7, v12, v19

    const/16 v16, 0x1

    aput-object v15, v12, v16

    invoke-static {v6, v12}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TQuery;TResult;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move/from16 v12, v19

    goto :goto_15f

    .line 1466
    .end local v0    # "cacheEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TQuery;TResult;>;>;"
    .end local v13    # "skips":J
    :cond_191
    monitor-exit v11

    .line 1467
    return-void

    .line 1466
    :catchall_193
    move-exception v0

    move-object v11, v7

    goto :goto_19a

    .end local v17    # "corkedInvalidates":J
    .local v5, "corkedInvalidates":J
    :catchall_196
    move-exception v0

    move-wide/from16 v17, v5

    move-object v11, v7

    .end local v5    # "corkedInvalidates":J
    .restart local v17    # "corkedInvalidates":J
    :goto_19a
    monitor-exit v11
    :try_end_19b
    .catchall {:try_start_da .. :try_end_19b} :catchall_19c

    throw v0

    :catchall_19c
    move-exception v0

    goto :goto_19a

    .line 1426
    .end local v8    # "invalidateCount":J
    .end local v17    # "corkedInvalidates":J
    :catchall_19e
    move-exception v0

    :try_start_19f
    monitor-exit v4
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v0
.end method

.method private static blacklist dumpCorkInfo(Ljava/io/PrintWriter;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 1474
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCorks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1475
    .local v0, "activeCorks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_39

    .line 1476
    const-string v1, "  Corking Status:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1478
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1479
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1480
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1479
    const-string v4, "    Property Name: %s Count: %d"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1483
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    .line 1344
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1345
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1346
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static blacklist getActiveCorks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1353
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1355
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .registers 5

    .line 642
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1c

    .line 643
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 644
    :try_start_7
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 645
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_17

    .line 646
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 648
    .end local v1    # "n":Ljava/lang/Long;
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    .line 651
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    .line 652
    .local v0, "handle":Landroid/os/SystemProperties$Handle;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2d

    .line 653
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v0

    .line 654
    if-nez v0, :cond_2b

    .line 655
    return-wide v1

    .line 657
    :cond_2b
    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    .line 659
    :cond_2d
    invoke-virtual {v0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist getNonce(Ljava/lang/String;)J
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 678
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1a

    .line 679
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 680
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 681
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_15

    .line 682
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 684
    .end local v1    # "n":Ljava/lang/Long;
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 686
    :cond_1a
    :goto_1a
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 1009
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_5

    .line 1014
    return-void

    .line 1022
    :cond_5
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_8
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1024
    .local v1, "numberCorks":Ljava/lang/Integer;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_36

    .line 1028
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1029
    .local v3, "count":J
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    monitor-exit v0

    return-void

    .line 1032
    .end local v3    # "count":J
    :cond_36
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    .line 1033
    .end local v1    # "numberCorks":Ljava/lang/Integer;
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;

    .line 995
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method private static blacklist invalidateCacheLocked(Ljava/lang/String;)V
    .registers 10
    .param p0, "name"    # Ljava/lang/String;

    .line 1040
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v0

    .line 1041
    .local v0, "nonce":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 1045
    return-void

    .line 1050
    :cond_b
    :goto_b
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v4

    .line 1051
    .local v4, "newValue":J
    invoke-static {v4, v5}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1059
    invoke-static {p0, v4, v5}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    .line 1060
    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1061
    .local v7, "invalidateCount":J
    add-long/2addr v2, v7

    move-wide v7, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    return-void

    .line 1051
    .end local v7    # "invalidateCount":J
    :cond_34
    goto :goto_b
.end method

.method private static blacklist isReservedNonce(J)Z
    .registers 4
    .param p0, "n"    # J

    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    .line 1285
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    .local p2, "proposedResult":Ljava/lang/Object;, "TResult;"
    return-object p2
.end method

.method public static blacklist onTrimMemory()V
    .registers 2

    .line 1548
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache;

    .line 1549
    .local v1, "pic":Landroid/app/PropertyInvalidatedCache;
    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 1550
    .end local v1    # "pic":Landroid/app/PropertyInvalidatedCache;
    goto :goto_8

    .line 1551
    :cond_18
    return-void
.end method

.method private blacklist registerCache()V
    .registers 4

    .line 586
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 589
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 591
    :cond_16
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static blacklist setNonce(Ljava/lang/String;J)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 664
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1d

    .line 665
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 666
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 667
    .local v1, "n":Ljava/lang/Long;
    if-eqz v1, :cond_18

    .line 668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    monitor-exit v0

    return-void

    .line 671
    .end local v1    # "n":Ljava/lang/Long;
    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    .line 673
    :cond_1d
    :goto_1d
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .registers 3
    .param p0, "mode"    # Z

    .line 613
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    .line 614
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 615
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .registers 9
    .param p1, "args"    # [Ljava/lang/String;

    .line 1403
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_39

    aget-object v3, p1, v2

    .line 1404
    .local v3, "a":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-has="

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    .line 1405
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1406
    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    .line 1407
    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_38

    .line 1403
    .end local v3    # "a":Ljava/lang/String;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1408
    .restart local v3    # "a":Ljava/lang/String;
    :cond_38
    :goto_38
    return v6

    .line 1411
    .end local v3    # "a":Ljava/lang/String;
    :cond_39
    return v1
.end method

.method private static blacklist testPropertyName(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 624
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 625
    const-wide/16 v1, 0x0

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 1126
    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_5

    .line 1131
    return-void

    .line 1134
    :cond_5
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_8
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1141
    .local v2, "numberCorks":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_30

    .line 1144
    if-ne v2, v3, :cond_25

    .line 1145
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    goto :goto_2e

    .line 1151
    :cond_25
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .end local v2    # "numberCorks":I
    :goto_2e
    monitor-exit v0

    .line 1154
    return-void

    .line 1142
    .restart local v2    # "numberCorks":I
    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cork underflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "name":Ljava/lang/String;
    throw v1

    .line 1153
    .end local v2    # "numberCorks":I
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw v1
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    .line 725
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .registers 2

    .line 1294
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist clear()V
    .registers 6

    .line 696
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 701
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    .line 702
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist disableForCurrentProcess()V
    .registers 2

    .line 820
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public final blacklist disableInstance()V
    .registers 3

    .line 765
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    .line 767
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist disableLocal()V
    .registers 1

    .line 809
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 810
    return-void
.end method

.method public final blacklist disableSystemWide()V
    .registers 2

    .line 963
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public final blacklist forgetDisableLocal()V
    .registers 4

    .line 796
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_3
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getDisabledState()Z
    .registers 2

    .line 1337
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public blacklist invalidateCache()V
    .registers 2

    .line 986
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public final blacklist isDisabled()Z
    .registers 2

    .line 835
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final blacklist propertyName()Ljava/lang/String;
    .registers 2

    .line 1302
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 845
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_e

    :cond_d
    move-wide v3, v1

    .line 846
    .local v3, "currentNonce":J
    :goto_e
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 847
    const-wide/16 v3, 0x3

    .line 850
    :cond_16
    :goto_16
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 851
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_30

    .line 854
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_23
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v6, v3

    aget-wide v7, v5, v6

    add-long/2addr v7, v1

    aput-wide v7, v5, v6

    .line 856
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v1

    .line 866
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 869
    :cond_35
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_38
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_4c

    .line 871
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 873
    .local v5, "cachedResult":Ljava/lang/Object;, "TResult;"
    if-eqz v5, :cond_52

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_52

    .line 881
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_4c
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    .line 882
    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    .line 883
    const/4 v5, 0x0

    .line 885
    .restart local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    :cond_52
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_ac

    .line 892
    if-eqz v5, :cond_8a

    .line 893
    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    .local v0, "refreshedResult":Ljava/lang/Object;, "TResult;"
    if-eq v0, v5, :cond_85

    .line 898
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v6

    .line 899
    .local v6, "afterRefreshNonce":J
    cmp-long v8, v3, v6

    if-eqz v8, :cond_65

    .line 900
    move-wide v3, v6

    .line 907
    goto :goto_16

    .line 909
    :cond_65
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 910
    :try_start_68
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v8

    if-eqz v2, :cond_6f

    goto :goto_7c

    .line 914
    :cond_6f
    if-nez v0, :cond_77

    .line 915
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 917
    :cond_77
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_82

    .line 920
    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 919
    :catchall_82
    move-exception v2

    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v2

    .line 925
    .end local v6    # "afterRefreshNonce":J
    :cond_85
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 931
    .end local v0    # "refreshedResult":Ljava/lang/Object;, "TResult;"
    :cond_8a
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 932
    .local v6, "result":Ljava/lang/Object;, "TResult;"
    iget-object v7, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 935
    :try_start_91
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v0, v8, v3

    if-nez v0, :cond_9e

    if-eqz v6, :cond_9e

    .line 936
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_9e
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    .line 939
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_91 .. :try_end_a4} :catchall_a9

    .line 940
    invoke-direct {p0, p1, v6}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 939
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v7
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0

    .line 885
    .end local v5    # "cachedResult":Ljava/lang/Object;, "TResult;"
    .end local v6    # "result":Ljava/lang/Object;, "TResult;"
    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1313
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 714
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "query":Ljava/lang/Object;, "TQuery;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    .line 755
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "oldResult":Ljava/lang/Object;, "TResult;"
    .local p2, "query":Ljava/lang/Object;, "TQuery;"
    return-object p1
.end method

.method public blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    .line 735
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    .local p1, "cachedResult":Ljava/lang/Object;, "TResult;"
    .local p2, "fetchedResult":Ljava/lang/Object;, "TResult;"
    if-eqz p2, :cond_7

    .line 736
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 738
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist testPropertyName()V
    .registers 2

    .line 636
    .local p0, "this":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<TQuery;TResult;>;"
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->testPropertyName(Ljava/lang/String;)V

    .line 637
    return-void
.end method
