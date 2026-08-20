.class Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkCountTracker"
.end annotation


# instance fields
.field public final mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

.field public mConfigMaxTotal:I

.field public final mConfigNumReservedSlots:Landroid/util/SparseIntArray;

.field public final mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

.field public final mNumPendingJobs:Landroid/util/SparseIntArray;

.field public final mNumRunningJobs:Landroid/util/SparseIntArray;

.field public final mNumStartingJobs:Landroid/util/SparseIntArray;

.field public mNumUnspecializedRemaining:I

.field public final mRecycledReserved:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 1969
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 1970
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 1976
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 1977
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 1978
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 1979
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 1980
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    return-void
.end method


# virtual methods
.method public final adjustPendingJobCount(IZ)I
    .registers 7

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_6

    :cond_5
    const/4 p2, -0x1

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-gt v0, p1, :cond_1c

    and-int v2, p1, v0

    if-ne v2, v0, :cond_19

    .line 2037
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    :cond_19
    shl-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method public canJobStart(I)I
    .registers 6

    const/4 v0, 0x1

    :goto_1
    if-gt v0, p1, :cond_2d

    and-int v1, p1, v0

    if-ne v1, v0, :cond_2a

    .line 2165
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 2166
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 2167
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/2addr v2, v3

    .line 2165
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2168
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_2a

    return v0

    :cond_2a
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public canJobStart(II)I
    .registers 7

    .line 2179
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_19

    if-lez v0, :cond_19

    .line 2181
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    move v2, v1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 2191
    :goto_1a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result p1

    if-eqz v2, :cond_2a

    .line 2193
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    :cond_2a
    return p1
.end method

.method public decrementPendingJobCount(I)V
    .registers 4

    const/4 v0, 0x0

    .line 2016
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->adjustPendingJobCount(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    :goto_8
    if-gt v1, p1, :cond_14

    and-int v0, v1, p1

    if-ne v0, v1, :cond_11

    .line 2022
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public getPendingJobCount(I)I
    .registers 3

    .line 2200
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getRunningJobCount(I)I
    .registers 3

    .line 2204
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public incrementPendingJobCount(I)V
    .registers 3

    const/4 v0, 0x1

    .line 2012
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->adjustPendingJobCount(IZ)I

    return-void
.end method

.method public incrementRunningJobCount(I)V
    .registers 3

    .line 2008
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public isOverTypeLimit(I)Z
    .registers 3

    .line 2208
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getRunningJobCount(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-le v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final maybeAdjustReservations(I)V
    .registers 7

    .line 2070
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 2071
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 2072
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 2070
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2073
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-ge v0, v1, :cond_81

    .line 2075
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p1, 0x0

    move v0, p1

    .line 2077
    :goto_2d
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_6d

    .line 2078
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    if-eqz v0, :cond_3f

    if-ge v1, v0, :cond_6a

    .line 2081
    :cond_3f
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 2082
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2083
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_6a

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 2084
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-le v2, v3, :cond_6a

    move v0, v1

    :cond_6a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    :cond_6d
    if-eqz v0, :cond_7b

    .line 2090
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 2091
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2090
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_81

    .line 2093
    :cond_7b
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    :cond_81
    :goto_81
    return-void
.end method

.method public onCountDone()V
    .registers 9

    .line 2130
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    const/4 v0, 0x1

    move v1, v0

    :goto_6
    const/16 v2, 0x3f

    if-ge v1, v2, :cond_1d

    .line 2134
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2135
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    move v1, v0

    :goto_1e
    const/4 v3, 0x0

    if-ge v1, v2, :cond_57

    .line 2141
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 2142
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 2143
    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 2144
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2143
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v5, v3

    .line 2146
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_57
    :goto_57
    if-ge v0, v2, :cond_8f

    .line 2152
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 2153
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 2154
    iget v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v6, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 2156
    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v4

    .line 2155
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2154
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2157
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    add-int/2addr v4, v1

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2158
    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    shl-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_8f
    return-void
.end method

.method public onJobFinished(I)V
    .registers 4

    .line 2111
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_26

    .line 2115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# running jobs for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " went negative."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2118
    :cond_26
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2119
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    return-void
.end method

.method public onJobStarted(I)V
    .registers 4

    .line 2099
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_2f

    .line 2102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# stated jobs for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " went negative."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2106
    :cond_2f
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_36
    return-void
.end method

.method public onStagedJobFailed(I)V
    .registers 4

    .line 2056
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_24

    .line 2058
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# staged jobs for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " went negative."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2063
    :cond_24
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2064
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    return-void
.end method

.method public resetCounts()V
    .registers 2

    .line 1997
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1998
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1999
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2000
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetStagingCount()V

    return-void
.end method

.method public resetStagingCount()V
    .registers 1

    .line 2004
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setConfig(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V
    .registers 6

    .line 1983
    invoke-virtual {p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    const/4 v0, 0x1

    move v1, v0

    :goto_8
    const/16 v2, 0x3f

    if-ge v1, v2, :cond_21

    .line 1985
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinReserved(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1986
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMax(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    shl-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1989
    :cond_21
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 1990
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_2c
    if-ltz p1, :cond_4c

    .line 1991
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 1992
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1991
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    :cond_4c
    return-void
.end method

.method public stageJob(II)V
    .registers 5

    .line 2046
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2047
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2048
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->decrementPendingJobCount(I)V

    .line 2049
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 2050
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-le v0, p1, :cond_25

    .line 2051
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    :cond_25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config={"

    .line 2214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tot="

    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mins="

    .line 2216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " maxs="

    .line 2218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", act res="

    .line 2222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Pending="

    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Running="

    .line 2224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Staged="

    .line 2225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", # unspecialized remaining="

    .line 2226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
