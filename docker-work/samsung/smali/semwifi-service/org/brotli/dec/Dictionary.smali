.class public final Lorg/brotli/dec/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/Dictionary$DataLoader;
    }
.end annotation


# static fields
.field static final MAX_DICTIONARY_WORD_LENGTH:I = 0x1f

.field static final MIN_DICTIONARY_WORD_LENGTH:I = 0x4

.field private static data:Ljava/nio/ByteBuffer;

.field static final offsets:[I

.field static final sizeBits:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 25
    sput-object v1, Lorg/brotli/dec/Dictionary;->offsets:[I

    new-array v0, v0, [I

    .line 26
    sput-object v0, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 84
    sget-object v0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return-object v0

    .line 87
    :cond_5
    sget-boolean v0, Lorg/brotli/dec/Dictionary$DataLoader;->OK:Z

    if-eqz v0, :cond_c

    .line 91
    sget-object v0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    return-object v0

    .line 88
    :cond_c
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "brotli dictionary is not set"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setData(Ljava/nio/ByteBuffer;[I)V
    .registers 9

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 47
    array-length v0, p1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_6f

    const/4 v0, 0x0

    move v2, v0

    :goto_13
    const/4 v3, 0x4

    if-ge v2, v3, :cond_25

    .line 52
    aget v3, p1, v2

    if-nez v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 53
    :cond_1d
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "first 4 must be 0"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_25
    sget-object v2, Lorg/brotli/dec/Dictionary;->offsets:[I

    .line 57
    sget-object v3, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    .line 58
    array-length v4, p1

    invoke-static {p1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    move v5, v0

    .line 61
    :goto_32
    array-length v6, p1

    if-ge v0, v6, :cond_58

    .line 62
    aput v5, v2, v0

    .line 63
    aget v6, v3, v0

    if-eqz v6, :cond_55

    if-ge v6, v1, :cond_4d

    shl-int v6, v0, v6

    add-int/2addr v5, v6

    if-lez v5, :cond_45

    if-gt v5, v4, :cond_45

    goto :goto_55

    .line 70
    :cond_45
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "sizeBits is inconsistent: overflow"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_4d
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "sizeBits values must be less than 31"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 74
    :cond_58
    array-length p1, p1

    :goto_59
    const/16 v0, 0x20

    if-ge p1, v0, :cond_62

    .line 75
    aput v5, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    :cond_62
    if-ne v5, v4, :cond_67

    .line 80
    sput-object p0, Lorg/brotli/dec/Dictionary;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 78
    :cond_67
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "sizeBits is inconsistent: underflow"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_6f
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "sizeBits length must be at most 31"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_77
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "data must be a direct read-only byte buffer"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
