.class final Lcom/android/framework/protobuf/LongArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;


# instance fields
.field private blacklist array:[J

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JI)V

    sput-object v0, Lcom/android/framework/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;

    .line 51
    invoke-virtual {v0}, Lcom/android/framework/protobuf/LongArrayList;->makeImmutable()V

    .line 52
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JI)V

    .line 70
    return-void
.end method

.method private constructor blacklist <init>([JI)V
    .registers 3
    .param p1, "other"    # [J
    .param p2, "size"    # I

    .line 75
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 77
    iput p2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 78
    return-void
.end method

.method private blacklist addLong(IJ)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 175
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 176
    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-gt p1, v0, :cond_3e

    .line 180
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 182
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 185
    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 186
    .local v0, "length":I
    new-array v2, v0, [J

    .line 189
    .local v2, "newArray":[J
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 196
    .end local v0    # "length":I
    .end local v2    # "newArray":[J
    :goto_2d
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aput-wide p2, v0, p1

    .line 197
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 198
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 199
    return-void

    .line 177
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/LongArrayList;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 268
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 271
    return-void

    .line 269
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Long;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(IJ)V

    .line 165
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3

    .line 45
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 203
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 205
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-nez v0, :cond_f

    .line 209
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 212
    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 213
    .local v0, "list":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, v0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 214
    return v2

    .line 217
    :cond_18
    const v3, 0x7fffffff

    iget v4, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, v4

    .line 218
    .local v3, "overflow":I
    if-lt v3, v1, :cond_40

    .line 223
    add-int/2addr v4, v1

    .line 224
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    array-length v5, v1

    if-le v4, v5, :cond_2c

    .line 225
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 228
    :cond_2c
    iget-object v1, v0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget-object v5, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v6, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput v4, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 230
    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 231
    return v2

    .line 220
    .end local v4    # "newSize":I
    :cond_40
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public blacklist addLong(J)V
    .registers 4
    .param p1, "element"    # J

    .line 170
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(IJ)V

    .line 171
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 95
    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-nez v1, :cond_d

    .line 98
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/LongArrayList;

    .line 101
    .local v1, "other":Lcom/android/framework/protobuf/LongArrayList;
    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 102
    return v4

    .line 105
    :cond_18
    iget-object v2, v1, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 106
    .local v2, "arr":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge v3, v5, :cond_2d

    .line 107
    iget-object v5, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v5, v5, v3

    aget-wide v7, v2, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2a

    .line 108
    return v4

    .line 106
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 112
    .end local v3    # "i":I
    :cond_2d
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Long;
    .registers 4
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getLong(I)J
    .registers 4
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int v0, v2, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;
    .registers 5
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 129
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JI)V

    return-object v0

    .line 127
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Long;
    .registers 7
    .param p1, "index"    # I

    .line 250
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 251
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 252
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 253
    .local v1, "value":J
    iget v3, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    .line 254
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_18
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 257
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 258
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge v0, v1, :cond_30

    .line 238
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 239
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 241
    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 242
    return v4

    .line 237
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 245
    .end local v0    # "i":I
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 82
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_1b

    .line 87
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 45
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLong(IJ)J
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 155
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 157
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 158
    .local v1, "previousValue":J
    aput-wide p2, v0, p1

    .line 159
    return-wide v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    return v0
.end method
