.class public Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V
    .registers 3
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "wire"    # Lorg/apache/http/impl/conn/Wire;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 69
    iput-object p2, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    .line 70
    return-void
.end method


# virtual methods
.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable(I)Z
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    .line 86
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_15

    if-lez v0, :cond_15

    .line 87
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/Wire;->input(I)V

    .line 89
    :cond_15
    return v0
.end method

.method public read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->read([B)I

    move-result v0

    .line 94
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_16

    if-lez v0, :cond_16

    .line 95
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    .line 97
    :cond_16
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 78
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_15

    if-lez v0, :cond_15

    .line 79
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/http/impl/conn/Wire;->input([BII)V

    .line 81
    :cond_15
    return v0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .registers 8
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 110
    .local v0, "l":I
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_36

    if-lez v0, :cond_36

    .line 111
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 112
    .local v1, "pos":I
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 113
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[EOL]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 115
    .end local v1    # "pos":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_36
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 103
    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;->wire:Lorg/apache/http/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[EOL]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 105
    :cond_28
    return-object v0
.end method
