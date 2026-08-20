.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;
.super Ljava/io/OutputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflateDecoderOutputStream"
.end annotation


# instance fields
.field deflater:Ljava/util/zip/Deflater;

.field deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/DeflaterOutputStream;Ljava/util/zip/Deflater;)V
    .registers 3

    .line 200
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 201
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    .line 202
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 225
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    return-void

    :catchall_b
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 226
    throw v0
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder$DeflateDecoderOutputStream;->deflaterOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    return-void
.end method
