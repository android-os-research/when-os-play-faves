.class public Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanMatrix.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field public static final PACKING:I = 0x20

.field public static final STEP:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final STRING_INUSE_INDEX:I = 0x2

.field public static final STRING_KEY_INDEX:I = 0x0

.field public static final STRING_MAP_INDEX:I = 0x1


# instance fields
.field public mInUse:[Z

.field public mKeys:[I

.field public mMap:[I

.field public mOrder:I

.field public mSize:I

.field public mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x40

    .line 141
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 149
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    const/16 v0, 0x40

    if-ge p1, v0, :cond_b

    .line 152
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 154
    :cond_b
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 155
    div-int/lit8 v1, p1, 0x40

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 157
    :cond_17
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v0, :cond_44

    rem-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_44

    .line 161
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 162
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 163
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 164
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr p1, p1

    div-int/lit8 p1, p1, 0x20

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return-void

    .line 158
    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " initCap is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .registers 2

    .line 171
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->copyFrom(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    return-void
.end method

.method public static binarySearch([III)I
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_18

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 747
    aget v2, p0, v1

    if-ge v2, p2, :cond_11

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    :cond_11
    if-le v2, p2, :cond_17

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_3

    :cond_17
    return v1

    :cond_18
    not-int p0, v0

    return p0
.end method


# virtual methods
.method public capacity()I
    .registers 1

    .line 574
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return p0
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 313
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public compact()V
    .registers 3

    .line 555
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->pack()V

    .line 556
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_13

    mul-int/lit8 v1, v1, 0x40

    sub-int/2addr v0, v1

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    :cond_13
    return-void
.end method

.method public contains(I)Z
    .registers 2

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public copyFrom(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V
    .registers 3

    .line 179
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 180
    iget v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 181
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 182
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 183
    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 184
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    return-void
.end method

.method public deleteKey(I)V
    .registers 3

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result p1

    if-ltz p1, :cond_a

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    :cond_a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 617
    :cond_4
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 621
    :cond_a
    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 622
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eq v1, v3, :cond_13

    return v2

    .line 625
    :cond_13
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    move v1, v2

    .line 630
    :goto_1f
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v3, :cond_41

    .line 631
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v1

    move v4, v2

    .line 632
    :goto_28
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_3e

    .line 633
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    .line 634
    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v6

    invoke-virtual {p1, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eq v6, v5, :cond_3b

    return v2

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_41
    return v0
.end method

.method public get(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->get(IIZ)Z

    move-result p0

    return p0
.end method

.method public get(IIZ)Z
    .registers 5

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result p1

    .line 208
    invoke-virtual {p0, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    move-result p2

    if-ltz p1, :cond_12

    if-ltz p2, :cond_12

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result p0

    return p0

    :cond_12
    return p3
.end method

.method public final growMatrix()V
    .registers 2

    .line 450
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    return-void
.end method

.method public hashCode()I
    .registers 7

    .line 596
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    mul-int/lit8 v0, v0, 0x1f

    .line 597
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 598
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 599
    :goto_16
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v2, v3, :cond_34

    .line 600
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v2

    move v4, v1

    .line 601
    :goto_1f
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_31

    mul-int/lit8 v0, v0, 0x1f

    .line 602
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_34
    return v0
.end method

.method public indexOfKey(I)I
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result p0

    return p0
.end method

.method public final indexOfKey(IZ)I
    .registers 9

    .line 402
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_5a

    if-eqz p2, :cond_5a

    not-int v0, v0

    .line 405
    iget p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt p2, v1, :cond_16

    .line 407
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->growMatrix()V

    :cond_16
    const/4 p2, 0x1

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v2, v3, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 411
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 412
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 415
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 p1, p1, 0x20

    .line 416
    div-int/lit8 v2, v1, 0x20

    .line 417
    rem-int/lit8 v3, v1, 0x20

    shl-int v3, p2, v3

    not-int v3, v3

    .line 418
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v5, v1, p1

    add-int/2addr v1, p2

    mul-int/2addr v1, p1

    const/4 p2, 0x0

    invoke-static {v4, v5, v1, p2}, Ljava/util/Arrays;->fill([IIII)V

    .line 419
    :goto_49
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p2, v1, :cond_5a

    .line 420
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v4, p2, p1

    add-int/2addr v4, v2

    aget v5, v1, v4

    and-int/2addr v5, v3

    aput v5, v1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_49

    :cond_5a
    return v0
.end method

.method public keyAt(I)I
    .registers 2

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 330
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget p0, p0, p1

    return p0
.end method

.method public keys()[I
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public final lastInuse()I
    .registers 4

    .line 503
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_24

    .line 504
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    .line 505
    :goto_d
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1b

    .line 506
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_18

    return v1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 510
    :cond_1b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_24
    const/4 p0, -0x1

    return p0
.end method

.method public matrixToString(Z)[Ljava/lang/String;
    .registers 5

    .line 715
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringMeta()[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 718
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringRaw()[Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 720
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->matrixToStringCooked()[Ljava/lang/String;

    move-result-object p0

    .line 722
    :goto_f
    array-length p1, v0

    array-length v1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/String;

    .line 723
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    array-length v0, v0

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public matrixToStringCooked()[Ljava/lang/String;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 702
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 703
    :goto_6
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v2, v3, :cond_36

    .line 704
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v2

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    .line 706
    :goto_14
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v6, :cond_2d

    .line 707
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v6, v6, v3

    invoke-virtual {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "1"

    goto :goto_27

    :cond_25
    const-string v6, "0"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 709
    :cond_2d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_36
    return-object v0
.end method

.method public matrixToStringMeta()[Ljava/lang/String;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 652
    :goto_a
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string v5, " "

    const/4 v6, 0x1

    if-ge v3, v4, :cond_23

    .line 653
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_20

    .line 655
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 658
    :cond_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    .line 661
    :goto_2f
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v4, :cond_45

    .line 662
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_42

    .line 664
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 667
    :cond_45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    .line 670
    :goto_51
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v4, :cond_66

    .line 671
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_5e

    const-string v4, "1"

    goto :goto_60

    :cond_5e
    const-string v4, "0"

    :goto_60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_66
    const/4 p0, 0x2

    .line 673
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method

.method public matrixToStringRaw()[Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 684
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 685
    :goto_6
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v2, v3, :cond_2e

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    .line 687
    :goto_10
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v5, :cond_25

    .line 688
    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "1"

    goto :goto_1f

    :cond_1d
    const-string v5, "0"

    :goto_1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 690
    :cond_25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2e
    return-object v0
.end method

.method public final nextFree(Z)I
    .registers 5

    const/4 v0, 0x0

    .line 488
    :goto_1
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 489
    aget-boolean v2, v1, v0

    if-nez v2, :cond_d

    .line 490
    aput-boolean p1, v1, v0

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final onChanged()V
    .registers 1

    .line 134
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final pack()V
    .registers 11

    .line 521
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eqz v0, :cond_63

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ne v0, v1, :cond_9

    goto :goto_63

    :cond_9
    const/4 v0, 0x0

    .line 526
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v1

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_63

    .line 527
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 528
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->lastInuse()I

    move-result v2

    .line 529
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v4, v2

    .line 530
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aput-boolean v0, v6, v5

    .line 531
    aput v1, v4, v2

    .line 532
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int v6, v5, v4

    div-int/lit8 v6, v6, 0x20

    mul-int v7, v1, v4

    div-int/lit8 v7, v7, 0x20

    div-int/lit8 v4, v4, 0x20

    invoke-static {v2, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    div-int/lit8 v2, v5, 0x20

    .line 536
    rem-int/lit8 v5, v5, 0x20

    shl-int v4, v3, v5

    .line 537
    div-int/lit8 v5, v1, 0x20

    .line 538
    rem-int/lit8 v1, v1, 0x20

    shl-int v1, v3, v1

    move v3, v0

    .line 539
    :goto_43
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v6, :cond_a

    .line 540
    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v8, v7, v2

    and-int/2addr v8, v4

    if-nez v8, :cond_55

    .line 541
    aget v8, v7, v5

    not-int v9, v1

    and-int/2addr v8, v9

    aput v8, v7, v5

    goto :goto_5a

    .line 543
    :cond_55
    aget v8, v7, v5

    or-int/2addr v8, v1

    aput v8, v7, v5

    .line 545
    :goto_5a
    div-int/lit8 v7, v6, 0x20

    add-int/2addr v2, v7

    .line 546
    div-int/lit8 v6, v6, 0x20

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_63
    :goto_63
    return-void
.end method

.method public put(IIZ)V
    .registers 7

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    if-ltz v0, :cond_c

    if-gez v1, :cond_1f

    :cond_c
    const/4 v2, 0x1

    if-gez v0, :cond_12

    .line 228
    invoke-virtual {p0, p1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    :cond_12
    if-gez v1, :cond_17

    .line 231
    invoke-virtual {p0, p2, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(IZ)I

    .line 233
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    :cond_1f
    if-ltz v0, :cond_27

    if-ltz v1, :cond_27

    .line 237
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAt(IIZ)V

    return-void

    .line 240
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "matrix overflow"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAt(I)V
    .registers 7

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 262
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v4, v3, -0x1

    aput v2, v0, v4

    .line 267
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v1, v0, -0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 269
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 270
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public removeRange(II)V
    .registers 8

    if-lt p2, p1, :cond_47

    sub-int v0, p2, p1

    if-nez v0, :cond_7

    return-void

    .line 285
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    add-int/lit8 v1, p2, -0x1

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    move v1, p1

    :goto_10
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1e

    .line 288
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v1

    aput-boolean v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 290
    :cond_1e
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr p1, v0

    :goto_31
    iget p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, p2, :cond_40

    .line 293
    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aput v2, p2, p1

    .line 294
    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_40
    sub-int/2addr p2, v0

    .line 296
    iput p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 297
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void

    .line 279
    :cond_47
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo p1, "toIndex < fromIndex"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resizeMatrix(I)V
    .registers 12

    .line 457
    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_4e

    .line 461
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 463
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v1

    .line 464
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    .line 466
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 468
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v5, p1, p1

    .line 470
    div-int/lit8 v5, v5, 0x20

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v5

    :goto_2e
    if-ge v3, v0, :cond_43

    .line 472
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x20

    mul-int v7, p1, v3

    .line 473
    div-int/lit8 v7, v7, 0x20

    .line 474
    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    div-int/lit8 v9, v0, 0x20

    invoke-static {v8, v6, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 477
    :cond_43
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 478
    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 479
    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 480
    iput-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 481
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return-void

    .line 458
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matrix order "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a multiple of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCapacity(I)V
    .registers 3

    .line 582
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-gt p1, v0, :cond_5

    return-void

    .line 585
    :cond_5
    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_f

    .line 586
    div-int/lit8 p1, p1, 0x40

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x40

    .line 588
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    return-void
.end method

.method public setValueAt(IIZ)V
    .registers 5

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 376
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget p1, v0, p1

    .line 377
    aget p2, v0, p2

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setValueAtInternal(IIZ)V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->onChanged()V

    return-void
.end method

.method public final setValueAtInternal(IIZ)V
    .registers 5

    .line 361
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 362
    div-int/lit8 p2, p1, 0x20

    .line 363
    rem-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    shl-int p1, v0, p1

    if-eqz p3, :cond_15

    .line 365
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget p3, p0, p2

    or-int/2addr p1, p3

    aput p1, p0, p2

    goto :goto_1d

    .line 367
    :cond_15
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget p3, p0, p2

    not-int p1, p1

    and-int/2addr p1, p3

    aput p1, p0, p2

    :goto_1d
    return-void
.end method

.method public size()I
    .registers 1

    .line 305
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .registers 2

    .line 191
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(Lcom/android/server/utils/WatchedSparseBooleanMatrix;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 43
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validateIndex(I)V
    .registers 2

    .line 432
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, p0, :cond_5

    return-void

    .line 434
    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public final validateIndex(II)V
    .registers 3

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 443
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    return-void
.end method

.method public valueAt(II)Z
    .registers 4

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(II)V

    .line 351
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget p1, v0, p1

    .line 352
    aget p2, v0, p2

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result p0

    return p0
.end method

.method public final valueAtInternal(II)Z
    .registers 4

    .line 338
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 339
    div-int/lit8 p2, p1, 0x20

    .line 340
    rem-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 341
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget p0, p0, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method
