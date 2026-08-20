.class public Lorg/apache/http/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "BasicRequestLine.java"

# interfaces
.implements Lorg/apache/http/RequestLine;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private final protoversion:Lorg/apache/http/ProtocolVersion;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "version"    # Lorg/apache/http/ProtocolVersion;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_20

    .line 69
    if-eqz p2, :cond_18

    .line 73
    if-eqz p3, :cond_10

    .line 77
    iput-object p1, p0, Lorg/apache/http/message/BasicRequestLine;->method:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/apache/http/message/BasicRequestLine;->uri:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/apache/http/message/BasicRequestLine;->protoversion:Lorg/apache/http/ProtocolVersion;

    .line 80
    return-void

    .line 74
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method must not be null."

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

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->protoversion:Lorg/apache/http/ProtocolVersion;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/apache/http/message/BasicRequestLine;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    sget-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/http/message/BasicLineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method
