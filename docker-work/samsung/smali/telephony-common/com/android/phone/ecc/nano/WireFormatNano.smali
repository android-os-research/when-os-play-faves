.class public final Lcom/android/phone/ecc/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final blacklist EMPTY_BOOLEAN_ARRAY:[Z

.field public static final blacklist EMPTY_BYTES:[B

.field public static final blacklist EMPTY_BYTES_ARRAY:[[B

.field public static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field public static final blacklist EMPTY_FLOAT_ARRAY:[F

.field public static final blacklist EMPTY_INT_ARRAY:[I

.field public static final blacklist EMPTY_LONG_ARRAY:[J

.field public static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 75
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    .line 76
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [F

    .line 77
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [D

    .line 78
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Z

    .line 79
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    .line 81
    sput-object v1, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    new-array v0, v0, [B

    .line 82
    sput-object v0, Lcom/android/phone/ecc/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method public static final blacklist getRepeatedFieldArrayLength(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->skipField(I)Z

    const/4 v1, 0x1

    .line 116
    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    if-ne v2, p1, :cond_14

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->skipField(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 120
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    return v1
.end method

.method public static blacklist getTagFieldNumber(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static blacklist getTagWireType(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static blacklist makeTag(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
