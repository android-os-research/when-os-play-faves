.class public Lcom/android/server/people/data/AppUsageStatsData;
.super Ljava/lang/Object;
.source "AppUsageStatsData.java"


# instance fields
.field public mChosenCount:I

.field public mLaunchCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    .line 31
    iput p2, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return-void
.end method


# virtual methods
.method public getChosenCount()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    return p0
.end method

.method public getLaunchCount()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return p0
.end method

.method public incrementChosenCountBy(I)V
    .registers 3

    .line 50
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    return-void
.end method

.method public incrementLaunchCountBy(I)V
    .registers 3

    .line 42
    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return-void
.end method
