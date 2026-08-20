.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 57
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 59
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_20

    .line 62
    return-void

    .line 60
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "lower":Ljava/lang/Comparable;, "TT;"
    .local p1, "upper":Ljava/lang/Comparable;, "TT;"
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 175
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    .line 178
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0

    .line 179
    :cond_11
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 180
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0

    .line 182
    :cond_1c
    return-object p1
.end method

.method public whitelist contains(Landroid/util/Range;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 136
    .local v0, "gteLower":Z
    :goto_15
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 138
    .local v3, "lteUpper":Z
    :goto_22
    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method public whitelist contains(Ljava/lang/Comparable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 116
    .local v0, "gteLower":Z
    :goto_13
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 118
    .local v3, "lteUpper":Z
    :goto_1e
    if-eqz v0, :cond_23

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 152
    return v0

    .line 153
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 154
    return v1

    .line 155
    :cond_8
    instance-of v2, p1, Landroid/util/Range;

    if-eqz v2, :cond_25

    .line 157
    move-object v2, p1

    check-cast v2, Landroid/util/Range;

    .line 158
    .local v2, "other":Landroid/util/Range;
    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, v2, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v0, v1

    :cond_24
    return v0

    .line 160
    .end local v2    # "other":Landroid/util/Range;
    :cond_25
    return v0
.end method

.method public whitelist extend(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 279
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 281
    return-object p1

    .line 282
    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    .line 284
    return-object p0

    .line 287
    :cond_20
    if-ltz v0, :cond_25

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_27

    :cond_25
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 288
    :goto_27
    if-gtz v1, :cond_2c

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2e

    :cond_2c
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 286
    :goto_2e
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 310
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 312
    .local v1, "cmpUpper":I
    if-ltz v0, :cond_1d

    if-gtz v1, :cond_1d

    .line 314
    return-object p0

    .line 317
    :cond_1d
    if-ltz v0, :cond_22

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_23

    :cond_22
    move-object v2, p1

    .line 318
    :goto_23
    if-gtz v1, :cond_28

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_29

    :cond_28
    move-object v3, p2

    .line 316
    :goto_29
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getLower()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist getUpper()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 354
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist intersect(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const-string/jumbo v0, "range must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 209
    .local v0, "cmpLower":I
    iget-object v1, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 211
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    .line 213
    return-object p0

    .line 214
    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    .line 216
    return-object p1

    .line 219
    :cond_20
    if-gtz v0, :cond_25

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_27

    :cond_25
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    .line 220
    :goto_27
    if-ltz v1, :cond_2c

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_2e

    :cond_2c
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    .line 218
    :goto_2e
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p1, "lower":Ljava/lang/Comparable;, "TT;"
    .local p2, "upper":Ljava/lang/Comparable;, "TT;"
    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "cmpLower":I
    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 244
    .local v1, "cmpUpper":I
    if-gtz v0, :cond_1d

    if-ltz v1, :cond_1d

    .line 246
    return-object p0

    .line 249
    :cond_1d
    if-gtz v0, :cond_22

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    goto :goto_23

    :cond_22
    move-object v2, p1

    .line 250
    :goto_23
    if-ltz v1, :cond_28

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_29

    :cond_28
    move-object v3, p2

    .line 248
    :goto_29
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 346
    .local p0, "this":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
