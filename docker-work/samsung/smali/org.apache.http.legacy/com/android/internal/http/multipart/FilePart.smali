.class public Lcom/android/internal/http/multipart/FilePart;
.super Lcom/android/internal/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private source:Lcom/android/internal/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-class v0, Lcom/android/internal/http/multipart/FilePart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 75
    nop

    .line 76
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/android/internal/http/multipart/PartSource;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/android/internal/http/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 93
    nop

    .line 95
    if-nez p3, :cond_6

    const-string v0, "application/octet-stream"

    goto :goto_7

    :cond_6
    move-object v0, p3

    .line 96
    :goto_7
    if-nez p4, :cond_c

    const-string v1, "ISO-8859-1"

    goto :goto_d

    :cond_c
    move-object v1, p4

    .line 93
    :goto_d
    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p2, :cond_17

    .line 103
    iput-object p2, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    .line 104
    return-void

    .line 101
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected getSource()Lcom/android/internal/http/multipart/PartSource;
    .registers 3

    .line 239
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getSource()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .registers 3

    .line 250
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/android/internal/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    .line 216
    const-string v1, "No data to send."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 217
    return-void

    .line 220
    :cond_17
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 221
    .local v0, "tmp":[B
    iget-object v1, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    invoke-interface {v1}, Lcom/android/internal/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 224
    .local v1, "instream":Ljava/io/InputStream;
    :goto_21
    :try_start_21
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-ltz v2, :cond_2d

    .line 225
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_32

    goto :goto_21

    .line 229
    .end local v3    # "len":I
    :cond_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 230
    nop

    .line 231
    return-void

    .line 229
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 230
    throw v2
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 192
    invoke-super {p0, p1}, Lcom/android/internal/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    invoke-interface {v0}, Lcom/android/internal/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 195
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 198
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    :cond_28
    return-void
.end method
