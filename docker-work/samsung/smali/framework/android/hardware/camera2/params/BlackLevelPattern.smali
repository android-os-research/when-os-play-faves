.class public final Landroid/hardware/camera2/params/BlackLevelPattern;
.super Ljava/lang/Object;
.source "BlackLevelPattern.java"


# static fields
.field public static final whitelist COUNT:I = 0x4


# instance fields
.field private final greylist-max-o mCfaOffsets:[I


# direct methods
.method public constructor greylist-max-o <init>([I)V
    .registers 4
    .param p1, "offsets"    # [I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_18

    .line 56
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    .line 59
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 60
    return-void

    .line 57
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offsets array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null offsets array passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist copyTo([II)V
    .registers 7
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    .line 92
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    if-ltz p2, :cond_23

    .line 96
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1a

    .line 100
    add-int v2, p2, v0

    iget-object v3, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    aget v3, v3, v0

    aput v3, p1, v2

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 102
    .end local v0    # "i":I
    :cond_1a
    return-void

    .line 97
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null offset passed to copyTo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 114
    return v0

    .line 115
    :cond_4
    if-ne p0, p1, :cond_8

    .line 116
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_18

    .line 118
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 119
    .local v0, "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    iget-object v1, v0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 121
    .end local v0    # "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    :cond_18
    return v0
.end method

.method public whitelist getOffsetForIndex(II)I
    .registers 6
    .param p1, "column"    # I
    .param p2, "row"    # I

    .line 72
    if-ltz p2, :cond_10

    if-ltz p1, :cond_10

    .line 75
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    and-int/lit8 v1, p2, 0x1

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p1, 0x1

    or-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 73
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column, row arguments must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 153
    const-string v1, "BlackLevelPattern([%d, %d], [%d, %d])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
