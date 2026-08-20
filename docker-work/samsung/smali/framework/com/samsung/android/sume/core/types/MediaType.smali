.class public final enum Lcom/samsung/android/sume/core/types/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/types/MediaType$Flag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/MediaType;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final blacklist FLAG_COMPRESSED:I = 0x1

.field public static final enum blacklist IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist META:Lcom/samsung/android/sume/core/types/MediaType;

.field private static final blacklist MT_FLAG_SHIFT:I = 0x4

.field private static final blacklist MT_RANK_MASK:I = 0xf

.field private static final blacklist MT_RANK_MAX:I = 0x10

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist SCALA:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

.field public static final enum blacklist _MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 15
    new-instance v0, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 16
    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 17
    new-instance v3, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v5, "AUDIO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 18
    new-instance v5, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 19
    new-instance v7, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v9, "META"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    .line 20
    new-instance v9, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v11, "SCALA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    .line 21
    new-instance v11, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v13, "_MAX_RANK_"

    const/4 v14, 0x6

    const/16 v15, 0x10

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sume/core/types/MediaType;->_MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;

    .line 23
    new-instance v13, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v14, "RAW_IMAGE"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 24
    new-instance v14, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v3, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v12, "RAW_AUDIO"

    const/16 v10, 0x8

    invoke-direct {v14, v12, v10, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 25
    new-instance v12, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v5, v2}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v10, "RAW_VIDEO"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 26
    new-instance v10, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v8, "COMPRESSED_IMAGE"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    .line 27
    new-instance v8, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v3, v4}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v6, "COMPRESSED_AUDIO"

    const/16 v2, 0xb

    invoke-direct {v8, v6, v2, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 28
    new-instance v6, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v5, v4}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v15

    const-string v2, "COMPRESSED_VIDEO"

    const/16 v4, 0xc

    invoke-direct {v6, v2, v4, v15}, Lcom/samsung/android/sume/core/types/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    .line 14
    const/16 v2, 0xd

    new-array v2, v2, [Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v12, v2, v0

    const/16 v0, 0xa

    aput-object v10, v2, v0

    const/16 v0, 0xb

    aput-object v8, v2, v0

    aput-object v6, v2, v4

    sput-object v2, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    .line 39
    return-void
.end method

.method static synthetic blacklist lambda$of$0(ILcom/samsung/android/sume/core/types/MediaType;)Z
    .registers 3
    .param p0, "value"    # I
    .param p1, "e"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$of$1(I)Ljava/security/InvalidParameterException;
    .registers 4
    .param p0, "value"    # I

    .line 77
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid MediaType value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist of(I)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 3
    .param p0, "value"    # I

    .line 74
    invoke-static {}, Lcom/samsung/android/sume/core/types/MediaType;->values()[Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/types/MediaType$$ExternalSyntheticLambda1;-><init>(I)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    .line 74
    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/types/MediaType;I)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 3
    .param p0, "rank"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "flag"    # I

    .line 81
    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/types/MediaType;->typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/MediaType;->of(I)Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist typeValueOf(Lcom/samsung/android/sume/core/types/MediaType;I)I
    .registers 6
    .param p0, "rank"    # Lcom/samsung/android/sume/core/types/MediaType;
    .param p1, "flag"    # I

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->_MAX_RANK_:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1st argument is not depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->getValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/types/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/MediaType;
    .registers 1

    .line 14
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->$VALUES:[Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/MediaType;

    return-object v0
.end method


# virtual methods
.method public blacklist flag()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    return v0
.end method

.method public blacklist isAudio()Z
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isCompressed()Z
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isImage()Z
    .registers 3

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMetaData()Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isRaw()Z
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->flag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isScala()Z
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isVideo()Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->rank()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist rank()Lcom/samsung/android/sume/core/types/MediaType;
    .registers 2

    .line 54
    iget v0, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/samsung/android/sume/core/types/MediaType;->of(I)Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/MediaType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/MediaType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
