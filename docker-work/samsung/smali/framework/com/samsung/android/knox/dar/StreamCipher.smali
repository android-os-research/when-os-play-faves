.class public Lcom/samsung/android/knox/dar/StreamCipher;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEFAULT_KEY_LEN:I = 0x40

.field public static final blacklist DEFAULT_KS_HANDLE:J = 0x0L

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist HDR_CHARS:[C

.field private static final blacklist HDR_LEN:I

.field private static final blacklist MAX_RETRY_CNT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "StreamCipher.SDP"

.field private static blacklist sInstance:Lcom/samsung/android/knox/dar/StreamCipher;


# instance fields
.field private final blacklist mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPublicHandle:J

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->EMPTY_BYTES:[B

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_20

    sput-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    .line 36
    array-length v0, v0

    sput v0, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    return-void

    :array_20
    .array-data 2
        0xdds
        0xdes
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->initKeyMap()V

    .line 45
    return-void
.end method

.method private static blacklist checkHeader([BI)Z
    .registers 5
    .param p0, "stream"    # [B
    .param p1, "offset"    # I

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    if-ge v0, v1, :cond_18

    .line 265
    aget-byte v1, p0, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    sget-object v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    if-eq v1, v2, :cond_15

    .line 266
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist clear([B)V
    .registers 3
    .param p0, "bytes"    # [B

    .line 226
    if-nez p0, :cond_3

    .line 227
    return-void

    .line 228
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 229
    return-void
.end method

.method public static blacklist decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 11
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v1, "StreamCipher.SDP"

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_13

    goto :goto_71

    .line 366
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    .line 367
    .local v0, "len":I
    div-int/lit8 v3, v0, 0x2

    .line 368
    .local v3, "offset":I
    sub-int v2, v3, v2

    .line 370
    .local v2, "resLen":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    .line 371
    .local v4, "stream":[B
    invoke-static {v4, v3}, Lcom/samsung/android/knox/dar/StreamCipher;->checkHeader([BI)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 372
    const-string v5, "Failed to decrypt stream due to invalid header. return duplicate."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 376
    :cond_2f
    new-array v5, v2, [B

    .line 377
    .local v5, "res":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    if-ge v6, v2, :cond_46

    .line 378
    sget v7, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v8, v6, v7

    aget-byte v8, v4, v8

    add-int v9, v3, v6

    add-int/2addr v9, v7

    aget-byte v7, v4, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 377
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 381
    .end local v6    # "i":I
    :cond_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decryptStream type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :try_start_60
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1, v5}, Lcom/android/internal/widget/LockscreenCredential;->streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6c

    .line 385
    invoke-static {v5}, Lcom/samsung/android/knox/dar/StreamCipher;->clear([B)V

    .line 383
    return-object v1

    .line 385
    :catchall_6c
    move-exception v1

    invoke-static {v5}, Lcom/samsung/android/knox/dar/StreamCipher;->clear([B)V

    .line 386
    throw v1

    .line 362
    .end local v0    # "len":I
    .end local v2    # "resLen":I
    .end local v3    # "offset":I
    .end local v4    # "stream":[B
    .end local v5    # "res":[B
    :cond_71
    :goto_71
    const-string v0, "decryptStream is none or size zero. return duplicate."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist decryptStream([B)[B
    .registers 9
    .param p0, "stream"    # [B

    .line 303
    const-string v0, "StreamCipher.SDP"

    if-eqz p0, :cond_36

    array-length v1, p0

    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_c

    goto :goto_36

    .line 308
    :cond_c
    array-length v1, p0

    .line 309
    .local v1, "len":I
    div-int/lit8 v3, v1, 0x2

    .line 310
    .local v3, "offset":I
    sub-int v2, v3, v2

    .line 312
    .local v2, "resLen":I
    const/4 v4, 0x0

    .line 313
    .local v4, "res":[B
    invoke-static {p0, v3}, Lcom/samsung/android/knox/dar/StreamCipher;->checkHeader([BI)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 314
    new-array v4, v2, [B

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_2f

    .line 316
    sget v5, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v6, v0, v5

    aget-byte v6, p0, v6

    add-int v7, v3, v0

    add-int/2addr v7, v5

    aget-byte v5, p0, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .end local v0    # "i":I
    :cond_2f
    goto :goto_35

    .line 319
    :cond_30
    const-string v5, "Failed to decrypt stream due to invalid header"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_35
    return-object v4

    .line 304
    .end local v1    # "len":I
    .end local v2    # "resLen":I
    .end local v3    # "offset":I
    .end local v4    # "res":[B
    :cond_36
    :goto_36
    const-string v1, "decryptStream - Invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist encryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 11
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v1, "StreamCipher.SDP"

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_62

    .line 336
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    .line 337
    .local v0, "strLen":I
    sget v2, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x2

    .line 338
    .local v3, "resLen":I
    add-int/2addr v2, v0

    .line 340
    .local v2, "offset":I
    new-array v4, v3, [B

    .line 341
    .local v4, "res":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 343
    invoke-static {v4, v2}, Lcom/samsung/android/knox/dar/StreamCipher;->fillHeader([BI)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v5

    .line 346
    .local v5, "stream":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2c
    if-ge v6, v0, :cond_3f

    .line 347
    add-int v7, v2, v6

    sget v8, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int/2addr v7, v8

    add-int/2addr v8, v6

    aget-byte v8, v4, v8

    aget-byte v9, v5, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 346
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 350
    .end local v6    # "i":I
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptStream type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1, v4}, Lcom/android/internal/widget/LockscreenCredential;->streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    return-object v1

    .line 332
    .end local v0    # "strLen":I
    .end local v2    # "offset":I
    .end local v3    # "resLen":I
    .end local v4    # "res":[B
    .end local v5    # "stream":[B
    :cond_62
    :goto_62
    const-string v0, "encryptStream is none or size zero. return duplicate."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encryptStream([B)[B
    .registers 9
    .param p0, "stream"    # [B

    .line 278
    if-eqz p0, :cond_30

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_30

    .line 282
    :cond_6
    array-length v0, p0

    .line 283
    .local v0, "strLen":I
    sget v1, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x2

    .line 284
    .local v2, "resLen":I
    add-int/2addr v1, v0

    .line 286
    .local v1, "offset":I
    new-array v3, v2, [B

    .line 287
    .local v3, "res":[B
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 289
    invoke-static {v3, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->fillHeader([BI)V

    .line 291
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v0, :cond_2f

    .line 292
    add-int v5, v1, v4

    sget v6, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    add-int/2addr v5, v6

    add-int/2addr v6, v4

    aget-byte v6, v3, v6

    aget-byte v7, p0, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 294
    .end local v4    # "i":I
    :cond_2f
    return-object v3

    .line 279
    .end local v0    # "strLen":I
    .end local v1    # "offset":I
    .end local v2    # "resLen":I
    .end local v3    # "res":[B
    :cond_30
    :goto_30
    const-string v0, "StreamCipher.SDP"

    const-string v1, "encryptStream - Invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist fillHeader([BI)V
    .registers 6
    .param p0, "stream"    # [B
    .param p1, "offset"    # I

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_LEN:I

    if-ge v0, v1, :cond_15

    .line 259
    add-int v1, p1, v0

    aget-byte v2, p0, v0

    sget-object v3, Lcom/samsung/android/knox/dar/StreamCipher;->HDR_CHARS:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method private blacklist generateKey(I)[B
    .registers 5
    .param p1, "length"    # I

    .line 167
    if-lez p1, :cond_a

    .line 168
    new-array v0, p1, [B

    .line 169
    .local v0, "key":[B
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_13

    .line 171
    .end local v0    # "key":[B
    :cond_a
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 172
    .restart local v0    # "key":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 174
    :goto_13
    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/knox/dar/StreamCipher;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/dar/StreamCipher;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;

    if-nez v1, :cond_e

    .line 49
    new-instance v1, Lcom/samsung/android/knox/dar/StreamCipher;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/StreamCipher;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;

    .line 51
    :cond_e
    sget-object v1, Lcom/samsung/android/knox/dar/StreamCipher;->sInstance:Lcom/samsung/android/knox/dar/StreamCipher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    .registers 5
    .param p1, "handle"    # J

    .line 190
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    return-object v0
.end method

.method private blacklist initKeyMap()V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 58
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 59
    .local v1, "key":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 60
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    invoke-direct {v4, v1}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    .line 61
    sget-boolean v2, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_26

    .line 62
    const-string v2, "StreamCipher.SDP"

    const-string v3, "init :: Key map has been initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "key":[B
    :cond_26
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private blacklist registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "ks"    # Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z
    .registers 7
    .param p1, "handle"    # Ljava/lang/Long;
    .param p2, "ks"    # Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 200
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 202
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 204
    sget-boolean v0, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 205
    const-string v0, "StreamCipher.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register :: handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_35
    const/4 v0, 0x1

    return v0

    .line 203
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private blacklist streamCipher([B[B)[B
    .registers 8
    .param p1, "stream"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 144
    if-eqz p1, :cond_35

    array-length v0, p1

    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    array-length v0, p2

    if-eqz v0, :cond_35

    .line 149
    array-length v0, p1

    new-array v0, v0, [B

    .line 150
    .local v0, "res":[B
    array-length v1, p1

    array-length v2, p2

    if-le v1, v2, :cond_25

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "kI":I
    :goto_13
    array-length v3, p1

    if-ge v1, v3, :cond_24

    .line 152
    aget-byte v3, p1, v1

    aget-byte v4, p2, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    array-length v3, p2

    rem-int v2, v1, v3

    goto :goto_13

    .end local v1    # "i":I
    .end local v2    # "kI":I
    :cond_24
    goto :goto_34

    .line 155
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    array-length v2, p1

    if-ge v1, v2, :cond_34

    .line 156
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 159
    .end local v1    # "i":I
    :cond_34
    :goto_34
    return-object v0

    .line 146
    .end local v0    # "res":[B
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearKeyStream()V
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 104
    .local v2, "handle":Ljava/lang/Long;
    sget-boolean v3, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    if-eqz v3, :cond_39

    .line 105
    const-string v3, "StreamCipher.SDP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear :: handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_39
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    .line 107
    goto :goto_d

    .line 108
    :cond_44
    iget-object v3, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    .line 109
    .local v3, "keyStream":Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    if-eqz v3, :cond_51

    .line 110
    invoke-virtual {v3}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->destroy()V

    .line 112
    .end local v2    # "handle":Ljava/lang/Long;
    .end local v3    # "keyStream":Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    :cond_51
    goto :goto_d

    .line 113
    :cond_52
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->initKeyMap()V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public blacklist getCipher([BJ)[B
    .registers 5
    .param p1, "stream"    # [B
    .param p2, "handle"    # J

    .line 238
    if-nez p1, :cond_4

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey(J)[B
    .registers 9
    .param p1, "handle"    # J

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "ret":[B
    iget-object v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v1

    .line 180
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/dar/StreamCipher;->getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    move-result-object v2

    .line 181
    .local v2, "keyStream":Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    if-eqz v2, :cond_27

    .line 182
    const-string v3, "StreamCipher.SDP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key found with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->getKey()[B

    move-result-object v3

    move-object v0, v3

    .line 185
    .end local v2    # "keyStream":Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    :cond_27
    monitor-exit v1

    .line 186
    return-object v0

    .line 185
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public blacklist getPublicHandle()J
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist issueKeyStream()J
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 74
    :cond_17
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    .line 76
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    .line 77
    iget-wide v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mPublicHandle:J

    return-wide v0

    .line 76
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist issueKeyStream(I)J
    .registers 9
    .param p1, "length"    # I

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "ret":J
    if-gtz p1, :cond_5

    .line 83
    return-wide v0

    .line 86
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2b

    .line 87
    iget-object v3, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 88
    .local v3, "handle":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_17

    .line 89
    goto :goto_28

    .line 91
    :cond_17
    new-instance v5, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/StreamCipher;->generateKey(I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 92
    move-wide v0, v3

    .line 93
    goto :goto_2b

    .line 86
    .end local v3    # "handle":J
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 96
    .end local v2    # "i":I
    :cond_2b
    :goto_2b
    sget-boolean v2, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issue :: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StreamCipher.SDP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_47
    return-wide v0
.end method

.method public blacklist restoreCipher([BJ)[B
    .registers 5
    .param p1, "cipher"    # [B
    .param p2, "handle"    # J

    .line 251
    if-nez p1, :cond_4

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist streamCipher([BJ)[B
    .registers 8
    .param p1, "stream"    # [B
    .param p2, "handle"    # J

    .line 121
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    array-length v0, p1

    if-nez v0, :cond_a

    sget-object v0, Lcom/samsung/android/knox/dar/StreamCipher;->EMPTY_BYTES:[B

    return-object v0

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    .line 126
    :try_start_d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/dar/StreamCipher;->getKeyStreamLocked(J)Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    move-result-object v1

    .line 127
    .local v1, "keyStream":Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
    if-nez v1, :cond_2c

    .line 128
    sget-boolean v2, Lcom/samsung/android/knox/dar/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 129
    const-string v2, "StreamCipher.SDP"

    const-string v3, "cipher :: Key stream not found... critical!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1e
    new-instance v2, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;

    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/dar/StreamCipher;->generateKey(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;-><init>([B)V

    move-object v1, v2

    .line 131
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/knox/dar/StreamCipher;->registerKeyStream(JLcom/samsung/android/knox/dar/StreamCipher$KeyStream;)Z

    .line 133
    :cond_2c
    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->getKey()[B

    move-result-object v2

    .line 134
    .local v2, "key":[B
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/knox/dar/StreamCipher;->streamCipher([B[B)[B

    move-result-object v3

    move-object v1, v3

    .line 135
    .end local v2    # "key":[B
    .local v1, "ret":[B
    monitor-exit v0

    .line 136
    return-object v1

    .line 135
    .end local v1    # "ret":[B
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw v1
.end method
