.class public Lorg/apache/http/message/BasicStatusLine;
.super Ljava/lang/Object;
.source "BasicStatusLine.java"

# interfaces
.implements Lorg/apache/http/StatusLine;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final protoVersion:Lorg/apache/http/ProtocolVersion;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .registers 6
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "statusCode"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_16

    .line 87
    if-ltz p2, :cond_e

    .line 91
    iput-object p1, p0, Lorg/apache/http/message/BasicStatusLine;->protoVersion:Lorg/apache/http/ProtocolVersion;

    .line 92
    iput p2, p0, Lorg/apache/http/message/BasicStatusLine;->statusCode:I

    .line 93
    iput-object p3, p0, Lorg/apache/http/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    .line 94
    return-void

    .line 88
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status code may not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/apache/http/message/BasicStatusLine;->protoVersion:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/apache/http/message/BasicStatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 102
    iget v0, p0, Lorg/apache/http/message/BasicStatusLine;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 121
    sget-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/http/message/BasicLineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method
