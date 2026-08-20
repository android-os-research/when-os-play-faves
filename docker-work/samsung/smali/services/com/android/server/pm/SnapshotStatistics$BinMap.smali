.class public Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SnapshotStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinMap"
.end annotation


# instance fields
.field public mBinMap:[I

.field public mCount:I

.field public mMaxBin:I

.field public mUserKey:[I


# direct methods
.method public constructor <init>([I)V
    .registers 5

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 158
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 160
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    add-int/lit8 p1, p1, 0x1

    .line 161
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    const/4 p1, 0x0

    move v0, p1

    .line 164
    :goto_20
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v2, v1

    if-ge p1, v2, :cond_35

    .line 165
    :goto_25
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    aget v1, v1, p1

    if-gt v0, v1, :cond_32

    .line 166
    iget-object v1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 170
    :cond_35
    iget-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    array-length v0, v1

    aput v0, p1, p0

    return-void
.end method


# virtual methods
.method public count()I
    .registers 1

    .line 191
    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    return p0
.end method

.method public getBin(I)I
    .registers 3

    if-ltz p1, :cond_b

    .line 177
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-ge p1, v0, :cond_b

    .line 178
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget p0, p0, p1

    return p0

    .line 179
    :cond_b
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    if-lt p1, v0, :cond_14

    .line 180
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mBinMap:[I

    aget p0, p0, v0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public userKeys()[I
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    return-object p0
.end method
