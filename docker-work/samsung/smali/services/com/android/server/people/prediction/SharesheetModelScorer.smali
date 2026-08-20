.class public Lcom/android/server/people/prediction/SharesheetModelScorer;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
    }
.end annotation


# static fields
.field public static final CHOOSER_ACTIVITY:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final FOREGROUND_APP_PROMO_TIME_WINDOW:J

.field public static final FOREGROUND_APP_WEIGHT:F = 0.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FREQUENTLY_USED_APP_SCORE_INITIAL_DECAY:F = 0.3f

.field public static final ONE_MONTH_WINDOW:J

.field public static final RECENCY_INITIAL_BASE_SCORE:F = 0.4f

.field public static final RECENCY_SCORE_COUNT:Ljava/lang/Integer;

.field public static final RECENCY_SCORE_INITIAL_DECAY:F = 0.05f

.field public static final RECENCY_SCORE_SUBSEQUENT_DECAY:F = 0.02f

.field public static final TAG:Ljava/lang/String; = "SharesheetModelScorer"

.field public static final USAGE_STATS_CHOOSER_SCORE_INITIAL_DECAY:F = 0.9f


# direct methods
.method public static synthetic $r8$lambda$kAfsGyQ-98I6qKztrM2L4pvoE64(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->lambda$postProcess$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rcY8vkT-h-QyhFNM0TVMGcgvrxM(Landroid/util/Pair;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->lambda$computeScore$0(Landroid/util/Pair;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    .line 59
    const-class v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeScore(Ljava/util/List;IJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;IJ)V"
        }
    .end annotation

    .line 71
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 79
    :cond_7
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda2;-><init>()V

    .line 81
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move v5, v4

    move v8, v5

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 84
    new-instance v10, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>(Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore-IA;)V

    .line 85
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    if-nez v11, :cond_4a

    goto :goto_2e

    .line 90
    :cond_4a
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    sget-object v12, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v11, v12}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v11

    .line 91
    invoke-virtual {v11}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v11

    .line 92
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_89

    .line 93
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_62
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 95
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, p2, v12

    invoke-static {v12, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v12

    .line 94
    invoke-virtual {v10, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementFrequencyScore(F)V

    goto :goto_62

    .line 97
    :cond_82
    invoke-virtual {v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v11

    add-float/2addr v5, v11

    add-int/lit8 v6, v6, 0x1

    .line 101
    :cond_89
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v11

    move/from16 v12, p1

    invoke-interface {v11, v12}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v11

    .line 102
    invoke-virtual {v11}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v11

    .line 103
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c8

    .line 104
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 106
    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, p2, v13

    invoke-static {v13, v14}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v13

    .line 105
    invoke-virtual {v10, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->incrementMimeFrequencyScore(F)V

    goto :goto_a1

    .line 108
    :cond_c1
    invoke-virtual {v10}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v11

    add-float/2addr v8, v11

    add-int/lit8 v7, v7, 0x1

    .line 112
    :cond_c8
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v9

    sget-object v11, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v9, v11}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lcom/android/server/people/data/EventIndex;->getMostRecentActiveTimeSlot()Landroid/util/Range;

    move-result-object v9

    if-nez v9, :cond_da

    goto/16 :goto_2e

    .line 117
    :cond_da
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v11

    sget-object v13, Lcom/android/server/people/prediction/SharesheetModelScorer;->RECENCY_SCORE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v11, v14, :cond_108

    .line 118
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/util/Range;

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-lez v11, :cond_2e

    .line 119
    :cond_108
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v11

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v11, v13, :cond_115

    .line 120
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 122
    :cond_115
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 126
    :cond_11f
    :goto_11f
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14c

    const v2, 0x3ecccccd    # 0.4f

    .line 128
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_13e

    const v2, 0x3eb33333    # 0.35f

    const v9, 0x3ca3d70a    # 0.02f

    .line 130
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v2, v10

    .line 132
    :cond_13e
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    invoke-virtual {v9, v2}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setRecencyScore(F)V

    goto :goto_11f

    :cond_14c
    if-eqz v6, :cond_151

    int-to-float v0, v6

    div-float/2addr v5, v0

    goto :goto_152

    :cond_151
    move v5, v4

    .line 135
    :goto_152
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz v7, :cond_15b

    int-to-float v2, v7

    div-float/2addr v8, v2

    goto :goto_15c

    :cond_15b
    move v8, v4

    .line 136
    :goto_15c
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 137
    :goto_160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1d0

    move-object/from16 v5, p0

    .line 138
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 139
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    .line 142
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_182

    move-wide v11, v9

    goto :goto_18c

    :cond_182
    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float/2addr v8, v11

    float-to-double v11, v8

    .line 141
    :goto_18c
    invoke-static {v11, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeFreqScore(D)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setFrequencyScore(F)V

    .line 143
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    goto :goto_1a8

    .line 144
    :cond_19e
    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    div-float/2addr v8, v9

    float-to-double v9, v8

    .line 143
    :goto_1a8
    invoke-static {v9, v10}, Lcom/android/server/people/prediction/SharesheetModelScorer;->normalizeMimeFreqScore(D)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setMimeFrequencyScore(F)V

    .line 147
    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getRecencyScore()F

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getFrequencyScore()F

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v8

    .line 148
    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getMimeFrequencyScore()F

    move-result v9

    .line 147
    invoke-static {v8, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result v8

    .line 146
    invoke-virtual {v7, v8}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->setTotalScore(F)V

    .line 149
    invoke-virtual {v7}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->getTotalScore()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_160

    :cond_1d0
    return-void
.end method

.method public static computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;IIJ",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 173
    invoke-static {p0, p1, p3, p4}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 174
    invoke-static {p0, p2, p5, p6}, Lcom/android/server/people/prediction/SharesheetModelScorer;->postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;I)V

    return-void
.end method

.method public static findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 303
    sget-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    sub-long v2, v4, v0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object p1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_16
    if-ltz p2, :cond_56

    .line 307
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    if-eqz v2, :cond_38

    .line 309
    sget-object v4, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    :cond_38
    sget-object v2, Lcom/android/server/people/prediction/SharesheetModelScorer;->CHOOSER_ACTIVITY:Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_53

    :cond_41
    if-nez v1, :cond_45

    move-object v1, v3

    goto :goto_53

    .line 315
    :cond_45
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    move-object v0, v3

    goto :goto_56

    :cond_53
    :goto_53
    add-int/lit8 p2, p2, -0x1

    goto :goto_16

    :cond_56
    :goto_56
    return-object v0
.end method

.method public static getFreqDecayedOnElapsedTime(J)F
    .registers 4

    .line 333
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 334
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_13

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_13
    const-wide/16 v0, 0x3

    .line 336
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_23

    const p0, 0x3f666666    # 0.9f

    return p0

    :cond_23
    const-wide/16 v0, 0x7

    .line 338
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_33

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_33
    const-wide/16 v0, 0xe

    .line 340
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-gtz p0, :cond_43

    const p0, 0x3f333333    # 0.7f

    return p0

    :cond_43
    const p0, 0x3f19999a    # 0.6f

    return p0
.end method

.method public static synthetic lambda$computeScore$0(Landroid/util/Pair;)J
    .registers 3

    .line 81
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$postProcess$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 184
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static normalizeFreqScore(D)F
    .registers 4

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_a

    const p0, 0x3e4ccccd    # 0.2f

    return p0

    :cond_a
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_14

    const p0, 0x3e19999a    # 0.15f

    return p0

    :cond_14
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1e

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_1e
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_28

    const p0, 0x3d4ccccd    # 0.05f

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeMimeFreqScore(D)F
    .registers 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_a

    const p0, 0x3e4ccccd    # 0.2f

    return p0

    :cond_a
    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_17

    const p0, 0x3e19999a    # 0.15f

    return p0

    :cond_17
    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_21

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static postProcess(Ljava/util/List;ILcom/android/server/people/data/DataManager;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;I",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 183
    invoke-virtual {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v3, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 185
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 187
    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 188
    invoke-virtual {v1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    goto :goto_48

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 193
    :cond_48
    :goto_48
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 195
    :cond_4c
    invoke-static {v0, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)V

    .line 196
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V

    return-void
.end method

.method public static probOR(FF)F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    sub-float p1, v0, p1

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            "Ljava/lang/Integer;",
            ">;FF)F"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/AppUsageStatsData;

    .line 240
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_a

    :cond_25
    if-lez v2, :cond_80

    .line 243
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_2f

    .line 247
    :cond_46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 248
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_60

    goto :goto_2f

    .line 251
    :cond_60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v4, v2

    div-float/2addr v0, v4

    .line 252
    invoke-virtual {v3, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    cmpl-float v3, v0, v5

    if-lez v3, :cond_2f

    .line 254
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    goto :goto_2f

    :cond_80
    return p4
.end method

.method public static promoteForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 276
    invoke-static {p0, p1, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->findSharingForegroundApp(Ljava/util/Map;Lcom/android/server/people/data/DataManager;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 279
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->probOR(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    :cond_1f
    return-void
.end method

.method public static promoteMostChosenAndFrequentlyUsedApps(Ljava/util/Map;ILcom/android/server/people/data/DataManager;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;>;I",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 210
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 211
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 212
    invoke-virtual {v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    add-int/lit8 v1, v1, 0x1

    .line 214
    invoke-virtual {v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1b

    :cond_3b
    if-lt v1, p1, :cond_3e

    return-void

    .line 222
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 223
    sget-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    sub-long v6, v8, v0

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    move-object v4, p2

    move v5, p3

    .line 224
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/people/data/DataManager;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object p1

    .line 227
    new-instance p2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>()V

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p3, v2

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    move-result p2

    .line 230
    new-instance p3, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p2

    invoke-static {p0, p1, p3, v0, p2}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    return-void
.end method
