.class public final Landroid/net/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HASH_ACCEPT_RANGES:I = 0x53476b3b

.field private static final HASH_CACHE_CONTROL:I = -0xc71a9ee

.field private static final HASH_CONN_DIRECTIVE:I = -0x2e3b8122

.field private static final HASH_CONTENT_DISPOSITION:I = -0x4b88f79d

.field private static final HASH_CONTENT_ENCODING:I = 0x7ce07427

.field private static final HASH_CONTENT_LEN:I = -0x4384d946

.field private static final HASH_CONTENT_TYPE:I = 0x2ed4600e

.field private static final HASH_ETAG:I = 0x2fa915

.field private static final HASH_EXPIRES:I = -0x4e0958cc

.field private static final HASH_LAST_MODIFIED:I = 0x8f17c20

.field private static final HASH_LOCATION:I = 0x714f9fb5

.field private static final HASH_PRAGMA:I = -0x3a6d1ac4

.field private static final HASH_PROXY_AUTHENTICATE:I = -0x11fc9c2c

.field private static final HASH_PROXY_CONNECTION:I = 0x110aef9d

.field private static final HASH_REFRESH:I = 0x40b292db

.field private static final HASH_SET_COOKIE:I = 0x49be662f

.field private static final HASH_TRANSFER_ENCODING:I = 0x4bf6b0f5

.field private static final HASH_WWW_AUTHENTICATE:I = -0xe7c74b5

.field private static final HASH_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = -0x5034229e

.field private static final HEADER_COUNT:I = 0x13

.field private static final IDX_ACCEPT_RANGES:I = 0xa

.field private static final IDX_CACHE_CONTROL:I = 0xc

.field private static final IDX_CONN_DIRECTIVE:I = 0x4

.field private static final IDX_CONTENT_DISPOSITION:I = 0x9

.field private static final IDX_CONTENT_ENCODING:I = 0x3

.field private static final IDX_CONTENT_LEN:I = 0x1

.field private static final IDX_CONTENT_TYPE:I = 0x2

.field private static final IDX_ETAG:I = 0xe

.field private static final IDX_EXPIRES:I = 0xb

.field private static final IDX_LAST_MODIFIED:I = 0xd

.field private static final IDX_LOCATION:I = 0x5

.field private static final IDX_PRAGMA:I = 0x10

.field private static final IDX_PROXY_AUTHENTICATE:I = 0x8

.field private static final IDX_PROXY_CONNECTION:I = 0x6

.field private static final IDX_REFRESH:I = 0x11

.field private static final IDX_SET_COOKIE:I = 0xf

.field private static final IDX_TRANSFER_ENCODING:I = 0x0

.field private static final IDX_WWW_AUTHENTICATE:I = 0x7

.field private static final IDX_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = 0x12

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOGTAG:Ljava/lang/String; = "Http"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final sHeaderNames:[Ljava/lang/String;


# instance fields
.field private connectionType:I

.field private contentLength:J

.field private cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:[Ljava/lang/String;

.field private transferEncoding:J


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 126
    const-string v0, "transfer-encoding"

    const-string v1, "content-length"

    const-string v2, "content-type"

    const-string v3, "content-encoding"

    const-string v4, "connection"

    const-string v5, "location"

    const-string v6, "proxy-connection"

    const-string v7, "www-authenticate"

    const-string v8, "proxy-authenticate"

    const-string v9, "content-disposition"

    const-string v10, "accept-ranges"

    const-string v11, "expires"

    const-string v12, "cache-control"

    const-string v13, "last-modified"

    const-string v14, "etag"

    const-string v15, "set-cookie"

    const-string v16, "pragma"

    const-string v17, "refresh"

    const-string v18, "x-permitted-cross-domain-policies"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    .line 125
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    .line 156
    return-void
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    .registers 13
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "beginIndex"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 479
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    .line 480
    .local v0, "len":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    .line 481
    .local v1, "chars":[C
    :goto_8
    if-ge p1, v0, :cond_15

    aget-char v2, v1, p1

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 482
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 484
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 485
    .local v2, "size":I
    add-int v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v0, v3, :cond_21

    move v3, v5

    goto :goto_22

    :cond_21
    move v3, v4

    .line 486
    .local v3, "ok":Z
    :goto_22
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_23
    if-eqz v3, :cond_42

    if-ge v6, v2, :cond_42

    .line 487
    add-int v7, p1, v6

    aget-char v7, v1, v7

    .line 488
    .local v7, "a":C
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 489
    .local v8, "b":C
    if-eq v7, v8, :cond_3f

    .line 490
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 491
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 492
    if-ne v7, v8, :cond_3d

    move v9, v5

    goto :goto_3e

    :cond_3d
    move v9, v4

    :goto_3e
    move v3, v9

    .line 486
    .end local v7    # "a":C
    .end local v8    # "b":C
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 496
    .end local v6    # "j":I
    :cond_42
    return v5
.end method

.method private setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I

    .line 460
    const-string v0, "Close"

    invoke-static {p1, p2, v0}, Landroid/net/http/Headers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 461
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    goto :goto_17

    .line 462
    :cond_c
    const-string v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Landroid/net/http/Headers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 464
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    .line 466
    :cond_17
    :goto_17
    return-void
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    .registers 8
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "ch"    # I

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    .line 507
    .local v1, "endIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v2

    .line 509
    .local v2, "chars":[C
    move v3, v0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_1a

    .line 510
    aget-char v4, v2, v3

    .line 511
    .local v4, "current":C
    if-ne v4, p1, :cond_11

    .line 512
    return v3

    .line 514
    :cond_11
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v2, v3

    .line 509
    .end local v4    # "current":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 517
    .end local v3    # "i":I
    :cond_1a
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .registers 3

    .line 346
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getConnectionType()I
    .registers 2

    .line 318
    iget v0, p0, Landroid/net/http/Headers;->connectionType:I

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .registers 3

    .line 342
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 314
    iget-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .line 322
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 3

    .line 362
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .registers 3

    .line 350
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeaders(Landroid/net/http/Headers$HeaderCallback;)V
    .registers 6
    .param p1, "hcb"    # Landroid/net/http/Headers$HeaderCallback;

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x13

    if-ge v0, v1, :cond_15

    .line 442
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 443
    .local v1, "h":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 444
    sget-object v2, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v2, v1}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v1    # "h":Ljava/lang/String;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 448
    .local v0, "extraLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_34

    .line 453
    iget-object v2, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    invoke-interface {p1, v2, v3}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 457
    .end local v1    # "i":I
    :cond_34
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
    .registers 3

    .line 358
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 3

    .line 330
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .registers 3

    .line 370
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .registers 3

    .line 338
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .registers 3

    .line 374
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransferEncoding()J
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .registers 3

    .line 334
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .registers 11
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;

    .line 159
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Landroid/net/http/Headers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    .line 160
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 161
    return-void

    .line 163
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_16

    .line 165
    return-void

    .line 167
    :cond_16
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 169
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1c6

    .line 304
    iget-object v1, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c5

    .line 214
    :sswitch_33
    const-string v1, "content-encoding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 215
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 225
    :sswitch_42
    const-string v1, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 226
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 251
    :sswitch_51
    const-string v1, "accept-ranges"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 252
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xa

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 176
    :sswitch_61
    const-string v3, "transfer-encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 177
    iget-object v3, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v3, v1

    .line 178
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    .line 180
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v3, v0, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 179
    invoke-virtual {v1, p1, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 183
    .local v1, "encodings":[Lorg/apache/http/HeaderElement;
    array-length v3, v1

    .line 184
    .local v3, "len":I
    const-string v5, "identity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_8a

    .line 185
    iput-wide v6, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto :goto_a3

    .line 186
    :cond_8a
    if-lez v3, :cond_a1

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v1, v5

    .line 188
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "chunked"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 189
    const-wide/16 v5, -0x2

    iput-wide v5, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto :goto_a3

    .line 191
    :cond_a1
    iput-wide v6, p0, Landroid/net/http/Headers;->transferEncoding:J

    .line 193
    .end local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v3    # "len":I
    :goto_a3
    goto/16 :goto_1c5

    .line 283
    :sswitch_a5
    const-string v1, "set-cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 284
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xf

    aput-object v4, v1, v3

    .line 285
    iget-object v1, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c5

    .line 294
    :sswitch_ba
    const-string v1, "refresh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 295
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0x11

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 209
    :sswitch_ca
    const-string v1, "content-type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 210
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 230
    :sswitch_d9
    const-string v1, "proxy-connection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 231
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v4, v1, v3

    .line 232
    invoke-direct {p0, p1, v0}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_1c5

    .line 273
    :sswitch_eb
    const-string v1, "last-modified"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 274
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xd

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 278
    :sswitch_fb
    const-string v1, "etag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 279
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xe

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 261
    :sswitch_10b
    const-string v1, "cache-control"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 264
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v1, v1, v3

    if-eqz v1, :cond_140

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_140

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    goto/16 :goto_1c5

    .line 268
    :cond_140
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 236
    :sswitch_146
    const-string v1, "www-authenticate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 237
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v4, v1, v3

    goto/16 :goto_1c5

    .line 241
    :sswitch_155
    const-string v1, "proxy-authenticate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 242
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v4, v1, v3

    goto :goto_1c5

    .line 219
    :sswitch_164
    const-string v1, "connection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 220
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v4, v1, v3

    .line 221
    invoke-direct {p0, p1, v0}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto :goto_1c5

    .line 289
    :sswitch_175
    const-string v1, "pragma"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 290
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0x10

    aput-object v4, v1, v3

    goto :goto_1c5

    .line 196
    :sswitch_184
    const-string v1, "content-length"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 197
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v1, v3

    .line 199
    :try_start_190
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/Headers;->contentLength:J
    :try_end_196
    .catch Ljava/lang/NumberFormatException; {:try_start_190 .. :try_end_196} :catch_197

    goto :goto_198

    .line 200
    :catch_197
    move-exception v1

    .line 205
    :goto_198
    goto :goto_1c5

    .line 246
    :sswitch_199
    const-string v1, "content-disposition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 247
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v4, v1, v3

    goto :goto_1c5

    .line 256
    :sswitch_1a8
    const-string v1, "expires"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 257
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v4, v1, v3

    goto :goto_1c5

    .line 299
    :sswitch_1b7
    const-string v1, "x-permitted-cross-domain-policies"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 300
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v3, 0x12

    aput-object v4, v1, v3

    .line 307
    :cond_1c5
    :goto_1c5
    return-void

    :sswitch_data_1c6
    .sparse-switch
        -0x5034229e -> :sswitch_1b7
        -0x4e0958cc -> :sswitch_1a8
        -0x4b88f79d -> :sswitch_199
        -0x4384d946 -> :sswitch_184
        -0x3a6d1ac4 -> :sswitch_175
        -0x2e3b8122 -> :sswitch_164
        -0x11fc9c2c -> :sswitch_155
        -0xe7c74b5 -> :sswitch_146
        -0xc71a9ee -> :sswitch_10b
        0x2fa915 -> :sswitch_fb
        0x8f17c20 -> :sswitch_eb
        0x110aef9d -> :sswitch_d9
        0x2ed4600e -> :sswitch_ca
        0x40b292db -> :sswitch_ba
        0x49be662f -> :sswitch_a5
        0x4bf6b0f5 -> :sswitch_61
        0x53476b3b -> :sswitch_51
        0x714f9fb5 -> :sswitch_42
        0x7ce07427 -> :sswitch_33
    .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 411
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 419
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 407
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 391
    return-void
.end method

.method public setContentLength(J)V
    .registers 3
    .param p1, "value"    # J

    .line 382
    iput-wide p1, p0, Landroid/net/http/Headers;->contentLength:J

    .line 383
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 387
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 427
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 415
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    .line 423
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 395
    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 402
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 403
    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 399
    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    .line 431
    return-void
.end method
