.class public Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;,
        Lcom/android/server/am/CacheOomRanker$ProcessDependencies;,
        Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;,
        Lcom/android/server/am/CacheOomRanker$LastRssComparator;,
        Lcom/android/server/am/CacheOomRanker$RssComparator;,
        Lcom/android/server/am/CacheOomRanker$CacheUseComparator;,
        Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;,
        Lcom/android/server/am/CacheOomRanker$ScoreComparator;
    }
.end annotation


# static fields
.field public static final CACHE_USE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_PRESERVE_TOP_N_APPS:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RSS_UPDATE_RATE_MS:J = 0x2710L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_USE_FREQUENT_RSS:Z = true
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_USE_OOM_RE_RANKING:Z = false

.field public static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_PRESERVE_TOP_N_APPS:Ljava/lang/String; = "oom_re_ranking_preserve_top_n_apps"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_RSS_UPDATE_RATE_MS:Ljava/lang/String; = "oom_re_ranking_rss_update_rate_ms"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_OOM_RE_RANKING_USE_FREQUENT_RSS:Ljava/lang/String; = "oom_re_ranking_rss_use_frequent_rss"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_RSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLruPositions:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation
.end field

.field public mLruWeight:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mPhenotypeFlagLock:Ljava/lang/Object;

.field public mPreserveTopNApps:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

.field public final mProfilerLock:Ljava/lang/Object;

.field public mRssUpdateRateMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRssWeight:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mUseFrequentRss:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mUseOomReRanking:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation
.end field

.field public mUsesWeight:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateLruWeight(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNumberToReRank(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePreserveTopNApps(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updatePreserveTopNApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRssUpdateRateMs(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssUpdateRateMs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRssWeight(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseFrequentRss(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseFrequentRss()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUseOomReranking(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUsesWeight(Lcom/android/server/am/CacheOomRanker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Lcom/android/server/am/CacheOomRanker$ScoreComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ScoreComparator;-><init>(Lcom/android/server/am/CacheOomRanker$ScoreComparator-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    .line 73
    new-instance v0, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;-><init>(Lcom/android/server/am/CacheOomRanker$CacheUseComparator-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(Lcom/android/server/am/CacheOomRanker$RssComparator-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    .line 77
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastRssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastRssComparator;-><init>(Lcom/android/server/am/CacheOomRanker$LastRssComparator-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    .line 79
    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>(Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator-IA;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 149
    new-instance v0, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;-><init>(Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl-IA;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    const-wide/16 v0, 0x2710

    .line 97
    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    const v0, 0x3eb33333    # 0.35f

    .line 101
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 105
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    const v0, 0x3e19999a    # 0.15f

    .line 109
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 120
    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 154
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 155
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 156
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    .line 157
    iput-object p2, p0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    return-void
.end method

.method public static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .registers 6

    const/4 v0, 0x1

    .line 426
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 427
    aget-object v1, p0, v0

    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    int-to-float v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    .line 420
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_18

    .line 421
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    const/16 v0, 0x3e9

    if-lt p0, v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "CacheOomRanker settings"

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_oom_re_ranking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_number_to_re_rank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_lru_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_uses_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_rss_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public getNumberToReRank()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    array-length p0, p0

    :goto_7
    return p0
.end method

.method public init(Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string v0, "activity_manager"

    .line 162
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter p1

    .line 165
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    .line 170
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 293
    iget-object v3, v0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_9
    iget v4, v0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 295
    iget v5, v0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 296
    iget v6, v0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 297
    iget v7, v0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 298
    iget-boolean v8, v0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 299
    iget-wide v9, v0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 300
    iget-object v11, v0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 301
    iget-object v12, v0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 302
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_188

    if-eqz v11, :cond_187

    if-nez v12, :cond_20

    goto/16 :goto_187

    :cond_20
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_22
    const/4 v15, 0x0

    if-ge v13, v2, :cond_48

    .line 313
    array-length v3, v12

    if-ge v14, v3, :cond_48

    .line 315
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 317
    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v17

    if-eqz v17, :cond_41

    move/from16 v17, v5

    .line 318
    aget-object v5, v12, v14

    iput-object v3, v5, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 319
    iput v15, v5, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 320
    aput v13, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_43

    :cond_41
    move/from16 v17, v5

    :goto_43
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    goto :goto_22

    :cond_48
    move/from16 v17, v5

    const/4 v3, 0x0

    :goto_4b
    if-ge v13, v2, :cond_60

    if-ge v3, v7, :cond_60

    .line 330
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 331
    invoke-static {v5}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_5d

    add-int/lit8 v3, v3, 0x1

    :cond_5d
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    :cond_60
    if-ge v3, v7, :cond_67

    sub-int/2addr v7, v3

    sub-int/2addr v14, v7

    if-gez v14, :cond_67

    const/4 v14, 0x0

    :cond_67
    if-eqz v8, :cond_da

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v14, :cond_da

    .line 348
    aget-object v7, v12, v5

    .line 349
    iget-object v13, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 350
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRssTimeMs()J

    move-result-wide v18

    sub-long v18, v2, v18

    .line 351
    iget-object v13, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRss()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v13, v20, v22

    if-eqz v13, :cond_91

    cmp-long v13, v18, v9

    if-gez v13, :cond_91

    move-wide/from16 v19, v9

    goto :goto_b9

    .line 356
    :cond_91
    iget-object v13, v0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    iget-object v15, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v15

    invoke-interface {v13, v15}, Lcom/android/server/am/CacheOomRanker$ProcessDependencies;->getRss(I)[J

    move-result-object v13

    if-eqz v13, :cond_bf

    .line 357
    array-length v15, v13

    if-nez v15, :cond_a3

    goto :goto_bf

    .line 366
    :cond_a3
    iget-object v15, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-wide/from16 v19, v9

    const/16 v16, 0x0

    aget-wide v9, v13, v16

    invoke-virtual {v15, v9, v10, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCacheOomRankerRss(JJ)V

    .line 367
    iget-object v7, v7, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    aget-wide v9, v13, v16

    invoke-virtual {v7, v9, v10}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    :goto_b9
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v19

    const/4 v15, 0x0

    goto :goto_6e

    :cond_bf
    :goto_bf
    const-string v0, "OomAdjuster"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process.getRss returned bad value, not re-ranking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {v13}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_da
    move v2, v15

    cmpl-float v3, v4, v2

    if-lez v3, :cond_e9

    .line 375
    sget-object v3, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-static {v12, v5, v14, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 377
    invoke-static {v12, v4}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_ea

    :cond_e9
    const/4 v5, 0x0

    :goto_ea
    cmpl-float v3, v6, v2

    if-lez v3, :cond_10a

    if-eqz v8, :cond_f6

    .line 381
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v5, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_103

    .line 383
    :cond_f6
    iget-object v0, v0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_fd
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v5, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 385
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_fd .. :try_end_103} :catchall_107

    .line 387
    :goto_103
    invoke-static {v12, v6}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_10a

    :catchall_107
    move-exception v0

    .line 385
    :try_start_108
    monitor-exit v2
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    :cond_10a
    :goto_10a
    const/4 v0, 0x0

    cmpl-float v0, v17, v0

    if-lez v0, :cond_11b

    .line 390
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {v12, v2, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move/from16 v0, v17

    .line 391
    invoke-static {v12, v0}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    .line 395
    :goto_11c
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2, v14, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 398
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_173

    move v0, v2

    move/from16 v16, v0

    :goto_128
    if-ge v0, v14, :cond_173

    .line 401
    aget-object v3, v12, v0

    iget-object v3, v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    aget v4, v11, v0

    .line 402
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-eq v3, v4, :cond_170

    if-nez v16, :cond_14c

    const-string v3, "OomAdjuster"

    const-string/jumbo v4, "reRankLruCachedApps"

    .line 404
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    :cond_14c
    const-string v3, "OomAdjuster"

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  newPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v11, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v12, v0

    iget-object v5, v5, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    :cond_173
    move v3, v2

    :goto_174
    if-ge v3, v14, :cond_187

    .line 414
    aget v0, v11, v3

    aget-object v2, v12, v3

    iget-object v2, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    aget-object v0, v12, v3

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v3, v3, 0x1

    goto :goto_174

    :cond_187
    :goto_187
    return-void

    :catchall_188
    move-exception v0

    .line 302
    :try_start_189
    monitor-exit v3
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    throw v0
.end method

.method public final updateLruWeight()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_lru_weight"

    const v2, 0x3eb33333    # 0.35f

    .line 235
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    return-void
.end method

.method public final updateNumberToReRank()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v0

    const-string v1, "activity_manager"

    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    const/16 v3, 0x8

    .line 191
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 194
    new-array v0, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v0, 0x0

    .line 195
    :goto_16
    iget-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    array-length v3, v2

    if-ge v0, v3, :cond_26

    .line 196
    new-instance v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;-><init>(Lcom/android/server/am/CacheOomRanker$RankedProcessRecord-IA;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 198
    :cond_26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    :cond_2a
    return-void
.end method

.method public final updatePreserveTopNApps()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_preserve_top_n_apps"

    const/4 v2, 0x3

    .line 210
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_23

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found negative value for preserveTopNApps, setting to default: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_23
    move v2, v0

    .line 218
    :goto_24
    iput v2, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    return-void
.end method

.method public final updateRssUpdateRateMs()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_update_rate_ms"

    const-wide/16 v2, 0x2710

    .line 223
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    return-void
.end method

.method public final updateRssWeight()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_weight"

    const v2, 0x3e19999a    # 0.15f

    .line 247
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    return-void
.end method

.method public final updateUseFrequentRss()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_use_frequent_rss"

    const/4 v2, 0x1

    .line 229
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    return-void
.end method

.method public final updateUseOomReranking()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "use_oom_re_ranking"

    const/4 v2, 0x0

    .line 184
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    return-void
.end method

.method public final updateUsesWeight()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPhenotypeFlagLock"
        }
    .end annotation

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_uses_weight"

    const/high16 v2, 0x3f000000    # 0.5f

    .line 241
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    return-void
.end method

.method public useOomReranking()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
