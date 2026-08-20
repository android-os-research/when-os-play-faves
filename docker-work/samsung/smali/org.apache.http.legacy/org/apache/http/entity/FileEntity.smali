.class public Lorg/apache/http/entity/FileEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "FileEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 60
    if-eqz p1, :cond_b

    .line 63
    iput-object p1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 65
    return-void

    .line 61
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

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

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 72
    iget-object v0, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    if-eqz p1, :cond_27

    .line 83
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v1, 0x1000

    :try_start_b
    new-array v1, v1, [B

    .line 87
    .local v1, "tmp":[B
    :goto_d
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "l":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    .line 88
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_d

    .line 90
    :cond_1a
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_22

    .line 92
    .end local v1    # "tmp":[B
    .end local v3    # "l":I
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    throw v1

    .line 81
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
