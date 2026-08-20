.class public Lorg/apache/http/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closed:Z

.field private final in:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .registers 4
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 61
    if-eqz p1, :cond_b

    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 65
    return-void

    .line 62
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    .line 77
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_6

    .line 81
    const/4 v0, -0x1

    return v0

    .line 83
    :cond_6
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_6

    .line 89
    const/4 v0, -0x1

    return v0

    .line 91
    :cond_6
    iget-object v0, p0, Lorg/apache/http/impl/io/IdentityInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    return v0
.end method
