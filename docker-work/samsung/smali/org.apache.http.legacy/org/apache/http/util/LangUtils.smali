.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 69
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 74
    if-nez p1, :cond_7

    .line 75
    return v0

    .line 77
    :cond_7
    return v1

    .line 80
    :cond_8
    if-eqz p1, :cond_21

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_21

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 82
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 83
    return v1

    .line 81
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 86
    .end local v2    # "i":I
    :cond_20
    return v0

    .line 88
    :cond_21
    return v1
.end method

.method public static hashCode(II)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "hashcode"    # I

    .line 57
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(IZ)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "b"    # Z

    .line 61
    invoke-static {p0, p1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method
