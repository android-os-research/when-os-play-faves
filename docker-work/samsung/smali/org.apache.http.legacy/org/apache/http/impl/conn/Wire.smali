.class public Lorg/apache/http/impl/conn/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;)V
    .registers 2
    .param p1, "log"    # Lorg/apache/commons/logging/Log;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    .line 56
    return-void
.end method

.method private wire(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "ch":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_56

    .line 63
    const/16 v1, 0xd

    if-ne v2, v1, :cond_18

    .line 64
    const-string v1, "[\\r]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 65
    :cond_18
    const/16 v1, 0xa

    if-ne v2, v1, :cond_36

    .line 66
    const-string v1, "[\\n]\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "\""

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 71
    :cond_36
    const/16 v1, 0x20

    if-lt v2, v1, :cond_44

    const/16 v1, 0x7f

    if-le v2, v1, :cond_3f

    goto :goto_44

    .line 76
    :cond_3f
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 72
    :cond_44
    :goto_44
    const-string v1, "[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 79
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_70

    .line 80
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 85
    :cond_70
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/conn/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public input(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    .line 148
    return-void
.end method

.method public input(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_8

    .line 105
    const-string v0, "<< "

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 106
    return-void

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    if-eqz p1, :cond_a

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->input([B)V

    .line 164
    return-void

    .line 161
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_d

    .line 137
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "<< "

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 138
    return-void

    .line 135
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p1, :cond_d

    .line 121
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string v1, "<< "

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 122
    return-void

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->output([B)V

    .line 143
    return-void
.end method

.method public output(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "outstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_8

    .line 97
    const-string v0, ">> "

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 98
    return-void

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    if-eqz p1, :cond_a

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/Wire;->output([B)V

    .line 156
    return-void

    .line 153
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    if-eqz p1, :cond_d

    .line 129
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, ">> "

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 130
    return-void

    .line 127
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_d

    .line 113
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string v1, ">> "

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/conn/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 114
    return-void

    .line 111
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
