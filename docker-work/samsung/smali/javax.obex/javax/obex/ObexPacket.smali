.class public Ljavax/obex/ObexPacket;
.super Ljava/lang/Object;
.source "ObexPacket.java"


# instance fields
.field public mHeaderId:I

.field public mLength:I

.field public mPayload:[B


# direct methods
.method private constructor <init>(II)V
    .registers 4
    .param p1, "headerId"    # I
    .param p2, "length"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ObexPacket;->mPayload:[B

    .line 29
    iput p1, p0, Ljavax/obex/ObexPacket;->mHeaderId:I

    .line 30
    iput p2, p0, Ljavax/obex/ObexPacket;->mLength:I

    .line 31
    return-void
.end method

.method public static read(ILjava/io/InputStream;)Ljavax/obex/ObexPacket;
    .registers 7
    .param p0, "headerId"    # I
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 54
    .local v0, "length":I
    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    add-int/2addr v1, v2

    .line 56
    .end local v0    # "length":I
    .local v1, "length":I
    new-instance v0, Ljavax/obex/ObexPacket;

    invoke-direct {v0, p0, v1}, Ljavax/obex/ObexPacket;-><init>(II)V

    .line 59
    .local v0, "newPacket":Ljavax/obex/ObexPacket;
    const/4 v2, 0x0

    .line 60
    .local v2, "temp":[B
    const/4 v3, 0x3

    if-le v1, v3, :cond_27

    .line 62
    add-int/lit8 v3, v1, -0x3

    new-array v2, v3, [B

    .line 63
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 64
    .local v3, "bytesReceived":I
    :goto_1c
    array-length v4, v2

    if-eq v3, v4, :cond_27

    .line 65
    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1c

    .line 68
    .end local v3    # "bytesReceived":I
    :cond_27
    iput-object v2, v0, Ljavax/obex/ObexPacket;->mPayload:[B

    .line 69
    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)Ljavax/obex/ObexPacket;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 41
    .local v0, "headerId":I
    invoke-static {v0, p0}, Ljavax/obex/ObexPacket;->read(ILjava/io/InputStream;)Ljavax/obex/ObexPacket;

    move-result-object v1

    return-object v1
.end method
