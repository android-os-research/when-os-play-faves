.class final Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenericArrayTypeImpl"
.end annotation


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    .line 128
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    # invokes: Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->access$100(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

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

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 1

    .line 112
    iget-object p0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 137
    iget-object p0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    or-int/lit16 p0, p0, 0x430

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 120
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
