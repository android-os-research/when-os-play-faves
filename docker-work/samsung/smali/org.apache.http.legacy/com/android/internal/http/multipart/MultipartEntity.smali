.class public Lcom/android/internal/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/android/internal/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    const-class v0, Lcom/android/internal/http/multipart/MultipartEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    .line 102
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;)V
    .registers 4
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;

    .line 142
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    .line 143
    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_13

    .line 147
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 149
    return-void

    .line 145
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lcom/android/internal/http/multipart/Part;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 131
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    .line 132
    if-eqz p1, :cond_17

    .line 135
    if-eqz p2, :cond_f

    .line 138
    iput-object p1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    .line 139
    iput-object p2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 140
    return-void

    .line 136
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateMultipartBoundary()[B
    .registers 5

    .line 109
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 110
    .local v0, "rand":Ljava/util/Random;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v1, v1, [B

    .line 111
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_21

    .line 112
    sget-object v3, Lcom/android/internal/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 114
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 217
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_13
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->contentConsumed:Z

    .line 221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    iget-object v2, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    invoke-static {v0, v1, v2}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    .line 223
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    return-object v1
.end method

.method public getContentLength()J
    .registers 4

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 209
    :catch_b
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 211
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 5

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    if-nez v0, :cond_21

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_12

    .line 164
    const-string v2, "http.method.multipart.boundary"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 166
    :cond_12
    if-eqz v0, :cond_1b

    .line 167
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    goto :goto_21

    .line 169
    :cond_1b
    invoke-static {}, Lcom/android/internal/http/multipart/MultipartEntity;->generateMultipartBoundary()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    .line 172
    .end local v0    # "temp":Ljava/lang/String;
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->multipartBoundary:[B

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 4

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 180
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/http/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_10

    .line 181
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/internal/http/multipart/MultipartEntity;->parts:[Lcom/android/internal/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/internal/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    .line 191
    return-void
.end method
