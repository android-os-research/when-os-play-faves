.class public final Landroid/net/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/AndroidHttpClient$CurlLogger;,
        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final SEND_MMS_BLOCK_DB_NAME:Ljava/lang/String; = "send_mms_block_list"

.field private static final SEPARATOR:Ljava/lang/String; = " "

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

.field private static textContentTypes:[Ljava/lang/String;


# instance fields
.field private volatile curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurlConfiguration(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    .registers 1

    iget-object p0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsThreadCheckInterceptor()Lorg/apache/http/HttpRequestInterceptor;
    .registers 1

    sget-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smtoCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/net/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 90
    const-wide/16 v0, 0x100

    sput-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 97
    const-string v0, "text/"

    const-string v1, "application/xml"

    const-string v2, "application/json"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/net/http/AndroidHttpClient$1;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClient$1;-><init>()V

    sput-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 177
    new-instance v0, Landroid/net/http/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/http/AndroidHttpClient$2;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    .line 205
    return-void
.end method

.method private checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 307
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AndroidHttpClient"

    if-nez v1, :cond_30

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 309
    :cond_30
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 310
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->isMmsRequest(Ljava/lang/String;)Z

    move-result v1

    .line 311
    .local v1, "mIsMmsRequest":Z
    if-eqz v1, :cond_6b

    .line 312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 313
    .local v3, "callingUid":I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "callingPackage":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NALSECURITY] checkMmsSendPermission() : callingPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", callingUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, v3}, Landroid/net/http/AndroidHttpClient;->getMmsPermissionForUid(I)Z

    move-result v2

    return v2

    .line 319
    .end local v1    # "mIsMmsRequest":Z
    .end local v3    # "callingUid":I
    .end local v4    # "callingPackage":Ljava/lang/String;
    :cond_6b
    const-string v1, "[NALSECURITY] checkMmsSendPermission() : Allow"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x1

    return v1
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 456
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .local v0, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_2f

    .line 458
    .end local v0    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 459
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .local v1, "zipper":Ljava/io/OutputStream;
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 461
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 462
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 463
    .local v2, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    move-object v0, v2

    .line 465
    .end local v1    # "zipper":Ljava/io/OutputStream;
    .end local v2    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    .local v0, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_2f
    return-object v0
.end method

.method private getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .line 359
    if-eqz p1, :cond_27

    .line 360
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1a

    .line 361
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 362
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1a

    .line 363
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 364
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1a

    .line 365
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 369
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_1a
    const-string v0, "Accept"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 370
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_27

    .line 371
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 374
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 340
    if-eqz p1, :cond_27

    .line 341
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1a

    .line 342
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 343
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1a

    .line 344
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 345
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1a

    .line 346
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 350
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_1a
    const-string v0, "Accept"

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 351
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_27

    .line 352
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 355
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .line 331
    if-eqz p1, :cond_11

    .line 332
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 333
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 324
    if-eqz p1, :cond_7

    .line 325
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 473
    sget-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method private getMmsPermissionForUid(I)Z
    .registers 14
    .param p1, "uid"    # I

    .line 268
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_mms_block_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "allowListFullString":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 270
    const-string v0, "0"

    .line 272
    :cond_12
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "allowList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    const-string v5, "[NALSECURITY] getMmsPermissionForUid uid ="

    const-string v6, "AndroidHttpClient"

    if-ge v4, v2, :cond_67

    aget-object v7, v1, v4

    .line 274
    .local v7, "allowUidSt":Ljava/lang/String;
    const-string v8, "0"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, "allowUid":I
    :try_start_29
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_2f

    move v8, v9

    .line 279
    goto :goto_46

    .line 277
    :catch_2f
    move-exception v9

    .line 278
    .local v9, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :goto_46
    if-ne p1, v8, :cond_64

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allow to send MMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x1

    return v2

    .line 273
    .end local v7    # "allowUidSt":Ljava/lang/String;
    .end local v8    # "allowUid":I
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 285
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Block MMS sending"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v3
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 237
    .local v0, "responseStream":Ljava/io/InputStream;
    if-nez v0, :cond_7

    return-object v0

    .line 238
    :cond_7
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 239
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_e

    return-object v0

    .line 240
    :cond_e
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "contentEncoding":Ljava/lang/String;
    if-nez v2, :cond_15

    return-object v0

    .line 242
    :cond_15
    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 244
    :cond_23
    return-object v0
.end method

.method private static isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .registers 12
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 621
    const-string v0, "content-encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 622
    .local v0, "headers":[Lorg/apache/http/Header;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 623
    array-length v3, v0

    move v4, v1

    :goto_c
    if-ge v4, v3, :cond_20

    aget-object v5, v0, v4

    .line 624
    .local v5, "header":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 625
    return v2

    .line 623
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 630
    :cond_20
    const-string v3, "content-type"

    invoke-interface {p0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_47

    .line 632
    array-length v3, v0

    move v4, v1

    :goto_2a
    if-ge v4, v3, :cond_47

    aget-object v5, v0, v4

    .line 633
    .restart local v5    # "header":Lorg/apache/http/Header;
    sget-object v6, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_32
    if-ge v8, v7, :cond_44

    aget-object v9, v6, v8

    .line 634
    .local v9, "contentType":Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 635
    return v1

    .line 633
    .end local v9    # "contentType":Ljava/lang/String;
    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 632
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 640
    :cond_47
    return v2
.end method

.method private isMmsRequest(Ljava/lang/String;)Z
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x1

    const-string v1, "AndroidHttpClient"

    if-eqz p1, :cond_24

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NALSECURITY] isMmsRequest() : contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v2, "mms-message"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 293
    return v0

    .line 296
    :cond_24
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 297
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "mUserAgent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NALSECURITY] isMmsRequest() : CoreProtocolPNames.USER_AGENT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "Android-Mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 300
    return v0

    .line 303
    .end local v2    # "mUserAgent":Ljava/lang/String;
    :cond_67
    const/4 v0, 0x0

    return v0
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .line 223
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    .registers 2
    .param p0, "userAgent"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .registers 10
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 132
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 134
    const v2, 0xea60

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 136
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 143
    if-nez p1, :cond_1e

    const/4 v1, 0x0

    goto :goto_23

    :cond_1e
    new-instance v1, Landroid/net/SSLSessionCache;

    invoke-direct {v1, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "sessionCache":Landroid/net/SSLSessionCache;
    :goto_23
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 147
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 148
    .local v3, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    .line 149
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    const-string v7, "http"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 148
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 150
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    .line 151
    invoke-static {v2, v1}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    const/16 v5, 0x1bb

    const-string v6, "https"

    invoke-direct {v4, v6, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 150
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 154
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 159
    .local v2, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Landroid/net/http/AndroidHttpClient;

    invoke-direct {v4, v2, v0}, Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v4
.end method

.method public static parseDate(Ljava/lang/String;)J
    .registers 3
    .param p0, "dateString"    # Ljava/lang/String;

    .line 658
    invoke-static {p0}, Landroid/net/http/LegacyHttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 12
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "curl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, "-X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_59

    aget-object v5, v1, v4

    .line 565
    .local v5, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_41

    .line 566
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Authorization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 567
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 568
    goto :goto_56

    .line 570
    :cond_41
    const-string v6, "--header \""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v6, "\" "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_56
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 575
    :cond_59
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 580
    .local v1, "uri":Ljava/net/URI;
    instance-of v2, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v2, :cond_73

    .line 581
    move-object v2, p0

    check-cast v2, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 582
    .local v2, "original":Lorg/apache/http/HttpRequest;
    instance-of v4, v2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_73

    .line 583
    move-object v4, v2

    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 587
    .end local v2    # "original":Lorg/apache/http/HttpRequest;
    :cond_73
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    instance-of v4, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_eb

    .line 592
    move-object v4, p0

    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 594
    .local v4, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 595
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_eb

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 596
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    cmp-long v6, v6, v8

    if-gez v6, :cond_e6

    .line 597
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 598
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 600
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 601
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "base64":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "echo \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v3, " --data-binary @/tmp/$$.bin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .end local v2    # "base64":Ljava/lang/String;
    goto :goto_e5

    .line 605
    :cond_d4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "entityString":Ljava/lang/String;
    const-string v7, " --data-ascii \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 607
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 608
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .end local v3    # "entityString":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_e5
    goto :goto_eb

    .line 611
    :cond_e6
    const-string v2, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .end local v4    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_eb
    :goto_eb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 253
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 256
    :cond_e
    return-void
.end method

.method public disableCurlLogging()V
    .registers 2

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 532
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 516
    if-eqz p1, :cond_19

    .line 519
    const/4 v0, 0x2

    if-lt p2, v0, :cond_11

    const/4 v0, 0x7

    if-gt p2, v0, :cond_11

    .line 524
    new-instance v0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$LoggingConfiguration-IA;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 525
    return-void

    .line 520
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 429
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 432
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 430
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 438
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 441
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 439
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 411
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 414
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 412
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 420
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 423
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 421
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 397
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 395
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 405
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 403
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 381
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 379
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getContentType(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 389
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 387
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 209
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_11

    .line 211
    const-string v1, "AndroidHttpClient"

    const-string v2, "Leak found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 214
    :cond_11
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
