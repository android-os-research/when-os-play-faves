.class public Landroid/net/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final MAX_REDIRECT_COUNT:I = 0x10

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field private mConnection:Landroid/net/http/Connection;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mRedirectCount:I

.field private mRequest:Landroid/net/http/Request;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mUri:Landroid/net/compatibility/WebAddress;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V
    .registers 10
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            ")V"
        }
    .end annotation

    .line 60
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 62
    if-nez p5, :cond_e

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p5, v0

    .line 65
    :cond_e
    iput-object p5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    .line 66
    iput-object p6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 67
    iput p7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    .line 68
    if-nez p4, :cond_19

    const-string v0, "GET"

    goto :goto_1a

    :cond_19
    move-object v0, p4

    :goto_1a
    iput-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    .line 73
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 75
    iput-object p8, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V
    .registers 10
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .param p9, "conn"    # Landroid/net/http/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            "Landroid/net/http/Connection;",
            ")V"
        }
    .end annotation

    .line 86
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    .line 88
    iput-object p9, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 89
    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "param"    # Ljava/lang/String;

    .line 392
    if-eqz p1, :cond_1f

    .line 394
    :try_start_2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 396
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 397
    .local v1, "d":[B
    if-eqz v1, :cond_17

    .line 398
    invoke-direct {p0, v1}, Landroid/net/http/RequestHandle;->bufferToHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_16} :catch_18

    return-object v2

    .line 402
    .end local v0    # "md5":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    :cond_17
    goto :goto_1f

    .line 400
    :catch_18
    move-exception v0

    .line 401
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 405
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authorizationHeader(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isProxy"    # Z

    .line 354
    if-nez p0, :cond_5

    .line 355
    const-string v0, "Authorization"

    return-object v0

    .line 357
    :cond_5
    const-string v0, "Proxy-Authorization"

    return-object v0
.end method

.method private bufferToHex([B)Ljava/lang/String;
    .registers 9
    .param p1, "buffer"    # [B

    .line 412
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_3a

    .line 415
    .local v0, "hexChars":[C
    if-eqz p1, :cond_37

    .line 416
    array-length v1, p1

    .line 417
    .local v1, "length":I
    if-lez v1, :cond_34

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 420
    .local v2, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_2f

    .line 421
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 422
    .local v4, "l":B
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    .line 424
    .local v5, "h":B
    aget-char v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    aget-char v6, v0, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    .end local v4    # "l":B
    .end local v5    # "h":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 428
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 430
    .end local v2    # "hex":Ljava/lang/StringBuilder;
    :cond_34
    const-string v2, ""

    return-object v2

    .line 434
    .end local v1    # "length":I
    :cond_37
    const/4 v1, 0x0

    return-object v1

    nop

    :array_3a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 275
    if-eqz p0, :cond_31

    .line 279
    if-eqz p1, :cond_29

    .line 284
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 280
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeCnonce()Ljava/lang/String;
    .registers 4

    .line 441
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 442
    .local v0, "rand":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 443
    .local v1, "nextInt":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    .line 444
    const v2, 0x7fffffff

    goto :goto_15

    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :goto_15
    move v1, v2

    .line 445
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "A1"    # Ljava/lang/String;
    .param p2, "A2"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "QOP"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "cnonce"    # Ljava/lang/String;

    .line 370
    const-string v0, ":"

    if-nez p4, :cond_26

    .line 371
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 373
    :cond_26
    const-string v1, "auth"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 374
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_68
    const/4 v0, 0x0

    return-object v0
.end method

.method private computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "QOP"    # Ljava/lang/String;
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "opaque"    # Ljava/lang/String;

    .line 308
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    if-eqz v8, :cond_184

    .line 312
    if-eqz v9, :cond_17a

    .line 316
    if-eqz v10, :cond_170

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 321
    .local v14, "A1":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 324
    .local v15, "A2":Ljava/lang/String;
    const-string v6, "00000001"

    .line 325
    .local v6, "nc":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/net/http/RequestHandle;->computeCnonce()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "cnonce":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v16, v5

    .end local v5    # "cnonce":Ljava/lang/String;
    .local v16, "cnonce":Ljava/lang/String;
    move-object v5, v6

    move-object v8, v6

    .end local v6    # "nc":Ljava/lang/String;
    .local v8, "nc":Ljava/lang/String;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/net/http/RequestHandle;->computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "digest":Ljava/lang/String;
    const-string v1, ""

    .line 329
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "realm="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v7, v10}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "nonce="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p4

    invoke-direct {v7, v4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "uri="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v7, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {v7, v5}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v7, v0}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v13, :cond_120

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v7, v13}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_120
    if-eqz v12, :cond_139

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", algorithm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_139
    if-eqz v11, :cond_16d

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", qop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cnonce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v16

    .end local v16    # "cnonce":Ljava/lang/String;
    .local v3, "cnonce":Ljava/lang/String;
    invoke-direct {v7, v3}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16f

    .line 343
    .end local v3    # "cnonce":Ljava/lang/String;
    .restart local v16    # "cnonce":Ljava/lang/String;
    :cond_16d
    move-object/from16 v3, v16

    .line 347
    .end local v16    # "cnonce":Ljava/lang/String;
    .restart local v3    # "cnonce":Ljava/lang/String;
    :goto_16f
    return-object v1

    .line 317
    .end local v0    # "digest":Ljava/lang/String;
    .end local v1    # "response":Ljava/lang/String;
    .end local v3    # "cnonce":Ljava/lang/String;
    .end local v8    # "nc":Ljava/lang/String;
    .end local v14    # "A1":Ljava/lang/String;
    .end local v15    # "A2":Ljava/lang/String;
    :cond_170
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "realm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_17a
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_184
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAndQueueNewRequest()V
    .registers 11

    .line 464
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_26

    .line 465
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v6, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v7, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v8, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v1 .. v8}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    .line 468
    .local v0, "newHandle":Landroid/net/http/RequestHandle;
    iget-object v1, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 469
    iget-object v1, v0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iput-object v1, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 470
    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 471
    return-void

    .line 473
    .end local v0    # "newHandle":Landroid/net/http/RequestHandle;
    :cond_26
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v7, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v8, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v9, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v2 .. v9}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v0, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 477
    return-void
.end method

.method private doubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 452
    if-eqz p1, :cond_1a

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 456
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private setupAuthResponse()V
    .registers 2

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 260
    :cond_7
    goto :goto_9

    .line 256
    :catch_8
    move-exception v0

    .line 261
    :goto_9
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 262
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Landroid/net/http/Request;->cancel()V

    .line 98
    :cond_7
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectCount()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    return v0
.end method

.method public handleSslErrorResponse(Z)V
    .registers 3
    .param p1, "proceed"    # Z

    .line 115
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->handleSslErrorResponse(Z)V

    .line 118
    :cond_7
    return-void
.end method

.method public isRedirectMax()Z
    .registers 3

    .line 124
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public pauseRequest(Z)V
    .registers 3
    .param p1, "pause"    # Z

    .line 105
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->setLoadingPaused(Z)V

    .line 108
    :cond_7
    return-void
.end method

.method public processRequest()V
    .registers 3

    .line 292
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_9

    .line 293
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 295
    :cond_9
    return-void
.end method

.method public setRedirectCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 132
    iput p1, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 133
    return-void
.end method

.method public setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 224
    invoke-static {p2, p3}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 230
    return-void
.end method

.method public setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "nonce"    # Ljava/lang/String;
    .param p6, "QOP"    # Ljava/lang/String;
    .param p7, "algorithm"    # Ljava/lang/String;
    .param p8, "opaque"    # Ljava/lang/String;

    .line 244
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/http/RequestHandle;->computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "response":Ljava/lang/String;
    move-object v1, p0

    iget-object v2, v1, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Digest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 251
    return-void
.end method

.method public setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    .registers 10
    .param p1, "redirectTo"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 152
    .local p3, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v1, "Proxy-Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_23

    .line 160
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    const/16 v1, -0x9

    const-string v3, "The page contains too many server redirects."

    invoke-virtual {v0, v1, v3}, Landroid/net/http/Request;->error(ILjava/lang/String;)V

    .line 162
    return v2

    .line 165
    :cond_23
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    const-string v3, "https:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 170
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v3, "Referer"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3c
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 175
    :try_start_3e
    new-instance v0, Landroid/net/compatibility/WebAddress;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/net/compatibility/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_47} :catch_48

    .line 178
    goto :goto_4c

    .line 176
    :catch_48
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4c
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v3, "Cookie"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "cookie":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    if-eqz v4, :cond_66

    .line 184
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/compatibility/WebAddress;

    invoke-virtual {v5}, Landroid/net/compatibility/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_66
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_73

    .line 187
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_73
    const/16 v3, 0x12e

    if-eq p2, v3, :cond_7b

    const/16 v3, 0x12f

    if-ne p2, v3, :cond_89

    :cond_7b
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 194
    const-string v3, "GET"

    iput-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 198
    :cond_89
    const/16 v3, 0x133

    if-ne p2, v3, :cond_97

    .line 200
    :try_start_8d
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_95

    .line 206
    :cond_94
    goto :goto_a1

    .line 201
    :catch_95
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/io/IOException;
    return v2

    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_97
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 214
    :goto_a1
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 217
    return v1
.end method

.method public waitUntilComplete()V
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->waitUntilComplete()V

    .line 289
    return-void
.end method
