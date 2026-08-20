.class public Landroid/net/http/HttpAuthHeader;
.super Ljava/lang/Object;
.source "HttpAuthHeader.java"


# static fields
.field private static final ALGORITHM_TOKEN:Ljava/lang/String; = "algorithm"

.field public static final BASIC:I = 0x1

.field public static final BASIC_TOKEN:Ljava/lang/String; = "Basic"

.field public static final DIGEST:I = 0x2

.field public static final DIGEST_TOKEN:Ljava/lang/String; = "Digest"

.field private static final NONCE_TOKEN:Ljava/lang/String; = "nonce"

.field private static final OPAQUE_TOKEN:Ljava/lang/String; = "opaque"

.field private static final QOP_TOKEN:Ljava/lang/String; = "qop"

.field private static final REALM_TOKEN:Ljava/lang/String; = "realm"

.field private static final STALE_TOKEN:Ljava/lang/String; = "stale"

.field public static final UNKNOWN:I


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mIsProxy:Z

.field private mNonce:Ljava/lang/String;

.field private mOpaque:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mQop:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mScheme:I

.field private mStale:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "header"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-eqz p1, :cond_8

    .line 118
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseHeader(Ljava/lang/String;)V

    .line 120
    :cond_8
    return-void
.end method

.method private parseHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "header"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_f

    .line 266
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "parameters":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 269
    iget v1, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    if-eqz v1, :cond_f

    .line 270
    invoke-direct {p0, v0}, Landroid/net/http/HttpAuthHeader;->parseParameters(Ljava/lang/String;)V

    .line 274
    .end local v0    # "parameters":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private parseParameter(Ljava/lang/String;)V
    .registers 7
    .param p1, "parameter"    # Ljava/lang/String;

    .line 336
    if-eqz p1, :cond_34

    .line 338
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 339
    .local v0, "i":I
    if-ltz v0, :cond_34

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "token":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .line 342
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpAuthHeader;->trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "value":Ljava/lang/String;
    const-string v3, "realm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 351
    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    goto :goto_34

    .line 353
    :cond_2c
    iget v3, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    .line 354
    invoke-direct {p0, v1, v2}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v0    # "i":I
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void
.end method

.method private parseParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 366
    if-eqz p1, :cond_48

    if-eqz p2, :cond_48

    .line 367
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 368
    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    .line 369
    return-void

    .line 372
    :cond_f
    const-string v0, "stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 373
    invoke-direct {p0, p2}, Landroid/net/http/HttpAuthHeader;->parseStale(Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    :cond_1b
    const-string v0, "opaque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 378
    iput-object p2, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    .line 379
    return-void

    .line 382
    :cond_26
    const-string v0, "qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 383
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    .line 384
    return-void

    .line 387
    :cond_37
    const-string v0, "algorithm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 388
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    .line 389
    return-void

    .line 392
    :cond_48
    return-void
.end method

.method private parseParameters(Ljava/lang/String;)V
    .registers 4
    .param p1, "parameters"    # Ljava/lang/String;

    .line 316
    if-eqz p1, :cond_1e

    .line 319
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 320
    .local v0, "i":I
    if-gez v0, :cond_e

    .line 322
    invoke-direct {p0, p1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    goto :goto_1c

    .line 324
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/http/HttpAuthHeader;->parseParameter(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 327
    :goto_1c
    if-gez v0, :cond_2

    .line 329
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private parseScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;

    .line 284
    if-eqz p1, :cond_35

    .line 285
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 286
    .local v0, "i":I
    if-ltz v0, :cond_35

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 289
    const/4 v2, 0x2

    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    .line 292
    const-string v2, "md5"

    iput-object v2, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    goto :goto_2e

    .line 294
    :cond_23
    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 295
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    .line 299
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 303
    .end local v0    # "i":I
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseStale(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 399
    if-eqz p1, :cond_d

    .line 400
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    .line 404
    :cond_d
    return-void
.end method

.method private static trimDoubleQuotesIfAny(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 412
    if-eqz p0, :cond_22

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 414
    .local v0, "len":I
    const/4 v1, 0x2

    if-le v0, v1, :cond_22

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_22

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_22

    .line 416
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 420
    .end local v0    # "len":I
    :cond_22
    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mOpaque:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    return v0
.end method

.method public getStale()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mStale:Z

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isBasic()Z
    .registers 3

    .line 168
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isDigest()Z
    .registers 3

    .line 175
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isProxy()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    return v0
.end method

.method public isSupportedScheme()Z
    .registers 5

    .line 241
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mRealm:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 242
    iget v0, p0, Landroid/net/http/HttpAuthHeader;->mScheme:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 243
    return v2

    .line 245
    :cond_b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_28

    .line 246
    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mAlgorithm:Ljava/lang/String;

    .line 247
    const-string v3, "md5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/net/http/HttpAuthHeader;->mQop:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 248
    const-string v3, "auth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    move v1, v2

    goto :goto_27

    :cond_26
    nop

    .line 246
    :goto_27
    return v1

    .line 253
    :cond_28
    return v1
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mPassword:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setProxy()V
    .registers 2

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/HttpAuthHeader;->mIsProxy:Z

    .line 134
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Landroid/net/http/HttpAuthHeader;->mUsername:Ljava/lang/String;

    .line 148
    return-void
.end method
