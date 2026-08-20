.class public Lorg/apache/http/entity/SerializableEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Z)V
    .registers 5
    .param p1, "ser"    # Ljava/io/Serializable;
    .param p2, "bufferize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 56
    if-eqz p1, :cond_e

    .line 60
    if-eqz p2, :cond_b

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    goto :goto_d

    .line 63
    :cond_b
    iput-object p1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    .line 65
    :goto_d
    return-void

    .line 57
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source object may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .registers 5
    .param p1, "ser"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v1, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    .line 73
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_9

    .line 77
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-direct {p0, v0}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 79
    :cond_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_7

    .line 84
    const-wide/16 v0, -0x1

    return-wide v0

    .line 86
    :cond_7
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_1b

    .line 103
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_14

    .line 104
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v0, "out":Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 107
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1a

    .line 108
    :cond_14
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 111
    :goto_1a
    return-void

    .line 100
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
