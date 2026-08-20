.class final Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# instance fields
.field private final lowerBounds:[Ljava/lang/reflect/Type;

.field private final upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 4

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    .line 233
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .registers 4

    .line 222
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    .line 265
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/reflect/WildcardType;

    # invokes: Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 1

    .line 249
    iget-object p0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 1

    .line 241
    iget-object p0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 274
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v0, v0, 0x4900

    shl-int/lit8 v0, v0, 0x8

    .line 276
    iget-object p0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 257
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
