.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 117
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 118
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .registers 3

    .line 482
    const-string v0, "MD5"

    invoke-static {v0}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 484
    .local v0, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "cnonce":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 487
    return-object v1
.end method

.method private createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;
    .registers 23
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 267
    move-object/from16 v0, p0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "realm"

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "realm":Ljava/lang/String;
    const-string v3, "nonce"

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "nonce":Ljava/lang/String;
    const-string v4, "methodname"

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "method":Ljava/lang/String;
    const-string v5, "algorithm"

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "algorithm":Ljava/lang/String;
    if-eqz v1, :cond_1dd

    .line 275
    if-eqz v2, :cond_1d3

    .line 278
    if-eqz v3, :cond_1c9

    .line 282
    if-nez v5, :cond_2a

    .line 283
    const-string v5, "MD5"

    .line 286
    :cond_2a
    const-string v6, "charset"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "charset":Ljava/lang/String;
    if-nez v6, :cond_34

    .line 288
    const-string v6, "ISO-8859-1"

    .line 291
    :cond_34
    iget v7, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1bf

    .line 296
    const-string v7, "MD5"

    invoke-static {v7}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 298
    .local v9, "md5Helper":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    .line 299
    .local v10, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v11

    .line 302
    .local v11, "pwd":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x2

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    .local v12, "tmp":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "a1":Ljava/lang/String;
    const-string v15, "MD5-sess"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ba

    .line 317
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "cnonce":Ljava/lang/String;
    invoke-static {v14, v6}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v15

    invoke-static {v15}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v15

    .line 320
    .local v15, "tmp2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v13, v17, 0x2

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v8, "tmp3":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const/16 v13, 0x3a

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v7    # "cnonce":Ljava/lang/String;
    .end local v8    # "tmp3":Ljava/lang/StringBuilder;
    .end local v15    # "tmp2":Ljava/lang/String;
    goto :goto_c0

    .line 327
    :cond_ba
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19c

    :goto_c0
    nop

    .line 330
    invoke-static {v14, v6}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "md5a1":Ljava/lang/String;
    const/4 v8, 0x0

    .line 333
    .local v8, "a2":Ljava/lang/String;
    iget v13, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_d4

    goto :goto_eb

    .line 338
    :cond_d4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 340
    :goto_eb
    invoke-static {v8}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "md5a2":Ljava/lang/String;
    iget v15, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-nez v15, :cond_12d

    .line 345
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int v0, v16, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v15

    .line 346
    .local v0, "tmp2":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/16 v15, 0x3a

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "serverDigestValue":Ljava/lang/String;
    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    goto :goto_18e

    .line 353
    .end local v0    # "serverDigestValue":Ljava/lang/String;
    :cond_12d
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "qopOption":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, "cnonce":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .local v16, "uri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v17, v17, v19

    .line 357
    move-object/from16 v19, v2

    .end local v2    # "realm":Ljava/lang/String;
    .local v19, "realm":Ljava/lang/String;
    const-string v2, "00000001"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v17, v17, v20

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int v17, v17, v20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v20

    add-int v17, v17, v20

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    add-int v17, v17, v20

    move-object/from16 v20, v4

    .end local v4    # "method":Ljava/lang/String;
    .local v20, "method":Ljava/lang/String;
    add-int/lit8 v4, v17, 0x5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v1, "tmp2":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 372
    .end local v1    # "tmp2":Ljava/lang/StringBuilder;
    .end local v15    # "cnonce":Ljava/lang/String;
    .local v0, "serverDigestValue":Ljava/lang/String;
    :goto_18e
    nop

    .line 373
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "serverDigest":Ljava/lang/String;
    return-object v1

    .line 328
    .end local v0    # "serverDigestValue":Ljava/lang/String;
    .end local v7    # "md5a1":Ljava/lang/String;
    .end local v8    # "a2":Ljava/lang/String;
    .end local v13    # "md5a2":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    .end local v20    # "method":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    .restart local v2    # "realm":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/String;
    :cond_19c
    move-object/from16 v16, v1

    move-object/from16 v19, v2

    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "realm":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    .restart local v19    # "realm":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    .end local v9    # "md5Helper":Ljava/security/MessageDigest;
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "pwd":Ljava/lang/String;
    .end local v12    # "tmp":Ljava/lang/StringBuilder;
    .end local v14    # "a1":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local v2    # "realm":Ljava/lang/String;
    :cond_1bf
    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v1, "Unsupported qop in HTTP Digest authentication"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v6    # "charset":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1c9
    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nonce may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    .end local v16    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1d3
    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .end local v16    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1dd
    move-object/from16 v16, v1

    .end local v1    # "uri":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 20
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 390
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 391
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 392
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1a

    .line 394
    :cond_15
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 396
    :goto_1a
    const-string v2, ": Digest "

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 398
    const-string v2, "uri"

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "realm"

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "realm":Ljava/lang/String;
    const-string v6, "nonce"

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "nonce":Ljava/lang/String;
    const-string v8, "opaque"

    invoke-virtual {v0, v8}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, "opaque":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 403
    .local v10, "response":Ljava/lang/String;
    const-string v11, "algorithm"

    invoke-virtual {v0, v11}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, "algorithm":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "uname":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0x14

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v16, v1

    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v16, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v1, "username"

    invoke-direct {v15, v1, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "response"

    invoke-direct {v1, v2, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget v1, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const-string v2, "nc"

    const-string v4, "qop"

    if-eqz v1, :cond_a8

    .line 415
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "00000001"

    invoke-direct {v1, v2, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    move-result-object v6

    const-string v15, "cnonce"

    invoke-direct {v1, v15, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_a8
    if-eqz v12, :cond_b2

    .line 420
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_b2
    if-eqz v9, :cond_bc

    .line 423
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_bc
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_bd
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_102

    .line 427
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 428
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v1, :cond_d3

    .line 429
    const-string v8, ", "

    move-object/from16 v11, v16

    .end local v16    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v11, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v11, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_d5

    .line 428
    .end local v11    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v16    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_d3
    move-object/from16 v11, v16

    .line 431
    .end local v16    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v11    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :goto_d5
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v16, 0x1

    if-nez v8, :cond_ee

    .line 432
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ec

    goto :goto_ee

    :cond_ec
    const/4 v8, 0x0

    goto :goto_f0

    :cond_ee
    :goto_ee
    move/from16 v8, v16

    .line 433
    .local v8, "noQuotes":Z
    :goto_f0
    sget-object v15, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v8, :cond_f7

    move/from16 v0, v16

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    .line 434
    :goto_f8
    invoke-virtual {v15, v11, v6, v0}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 426
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v8    # "noQuotes":Z
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v16, v11

    goto :goto_bd

    .end local v11    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v16    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_102
    move-object/from16 v11, v16

    .line 436
    .end local v1    # "i":I
    .end local v16    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v11    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v11}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 5
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 251
    :catch_5
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .registers 9
    .param p0, "binaryData"    # [B

    .line 457
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    .line 458
    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_7
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 462
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2b

    .line 463
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 464
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 465
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v7, v6, v4

    aput-char v7, v0, v5

    .line 466
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 462
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 469
    .end local v2    # "i":I
    :cond_2b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private getCnonce()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 205
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 207
    :cond_a
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .registers 3

    .line 441
    iget v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 442
    const-string v0, "auth-int"

    .local v0, "qopOption":Ljava/lang/String;
    goto :goto_a

    .line 444
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_8
    const-string v0, "auth"

    .line 446
    .restart local v0    # "qopOption":Ljava/lang/String;
    :goto_a
    return-object v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .registers 6
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 228
    if-eqz p1, :cond_4e

    .line 231
    if-eqz p2, :cond_46

    .line 236
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 240
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_3d
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "digest":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    return-object v2

    .line 232
    .end local v0    # "digest":Ljava/lang/String;
    .end local v1    # "charset":Ljava/lang/String;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 187
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .line 173
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 175
    const/4 v1, 0x0

    return v1

    .line 177
    :cond_10
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    return v1
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .registers 8
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 133
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 136
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "unsupportedQop":Z
    const-string v1, "qop"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "qop":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    .line 144
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v3, "tok":Ljava/util/StringTokenizer;
    :goto_24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 146
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "variant":Ljava/lang/String;
    const-string v5, "auth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 148
    const/4 v5, 0x2

    iput v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    .line 149
    goto :goto_4b

    .line 150
    :cond_3e
    const-string v5, "auth-int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 151
    iput v2, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    goto :goto_4a

    .line 153
    :cond_49
    const/4 v0, 0x1

    .line 155
    .end local v4    # "variant":Ljava/lang/String;
    :goto_4a
    goto :goto_24

    .line 158
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    :cond_4b
    :goto_4b
    if-eqz v0, :cond_5a

    iget v3, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    if-eqz v3, :cond_52

    goto :goto_5a

    .line 159
    :cond_52
    new-instance v2, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v3, "None of the qop methods is supported"

    invoke-direct {v2, v3}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_5a
    :goto_5a
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 163
    iput-boolean v2, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 164
    return-void

    .line 137
    .end local v0    # "unsupportedQop":Z
    .end local v1    # "qop":Ljava/lang/String;
    :cond_60
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v1, "missing nonce in challange"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_68
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v1, "missing realm in challange"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
