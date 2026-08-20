.class public Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/SharesheetModelScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTargetRankingScore"
.end annotation


# instance fields
.field public mFrequencyScore:F

.field public mMimeFrequencyScore:F

.field public mRecencyScore:F

.field public mTotalScore:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    .line 378
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    .line 379
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    .line 380
    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrequencyScore()F
    .registers 1

    .line 399
    iget p0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return p0
.end method

.method public getMimeFrequencyScore()F
    .registers 1

    .line 411
    iget p0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return p0
.end method

.method public getRecencyScore()F
    .registers 1

    .line 391
    iget p0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    return p0
.end method

.method public getTotalScore()F
    .registers 1

    .line 383
    iget p0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return p0
.end method

.method public incrementFrequencyScore(F)V
    .registers 3

    .line 407
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return-void
.end method

.method public incrementMimeFrequencyScore(F)V
    .registers 3

    .line 419
    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return-void
.end method

.method public setFrequencyScore(F)V
    .registers 2

    .line 403
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return-void
.end method

.method public setMimeFrequencyScore(F)V
    .registers 2

    .line 415
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return-void
.end method

.method public setRecencyScore(F)V
    .registers 2

    .line 395
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    return-void
.end method

.method public setTotalScore(F)V
    .registers 2

    .line 387
    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return-void
.end method
