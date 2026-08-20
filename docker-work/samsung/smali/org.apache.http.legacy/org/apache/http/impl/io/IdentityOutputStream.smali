.class public Lorg/apache/http/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;
.source "IdentityOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .registers 4
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;

    .line 64
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    .line 65
    if-eqz p1, :cond_b

    .line 68
    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 69
    return-void

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_c

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    .line 79
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 81
    :cond_c
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 85
    return-void
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/http/io/SessionOutputBuffer;->write(I)V

    .line 103
    return-void

    .line 100
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/IdentityOutputStream;->write([BII)V

    .line 96
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityOutputStream;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 92
    return-void

    .line 89
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
