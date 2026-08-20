.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field public static final EMPTY_RULE:[Ljava/lang/String;

.field public static final EXCEPTION_MARKER:B = 0x21t

.field public static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field public static final WILDCARD_LABEL:[B

.field public static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public publicSuffixExceptionListBytes:[B

.field public publicSuffixListBytes:[B

.field public final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 38
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    new-array v0, v2, [Ljava/lang/String;

    .line 39
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    const-string v0, "*"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_88

    add-int v5, v4, v2

    .line 201
    div-int/lit8 v5, v5, 0x2

    :goto_d
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_19

    .line 204
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_19

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_19
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_1d
    add-int v10, v5, v9

    .line 211
    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_26
    sub-int v6, v10, v5

    move/from16 v11, p2

    move v9, v3

    move v12, v9

    move v13, v12

    :goto_2d
    if-eqz v9, :cond_33

    const/16 v9, 0x2e

    move v14, v3

    goto :goto_3e

    .line 230
    :cond_33
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    :goto_3e
    add-int v15, v5, v13

    .line 233
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-eqz v9, :cond_48

    goto :goto_58

    :cond_48
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4f

    goto :goto_58

    .line 242
    :cond_4f
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_86

    .line 245
    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_81

    :goto_58
    if-gez v9, :cond_5e

    :goto_5a
    add-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_7

    :cond_5e
    if-lez v9, :cond_63

    :goto_60
    add-int/lit8 v4, v10, 0x1

    goto :goto_7

    :cond_63
    sub-int v7, v6, v13

    .line 262
    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    :goto_69
    add-int/lit8 v11, v11, 0x1

    .line 263
    array-length v9, v1

    if-ge v11, v9, :cond_73

    .line 264
    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_69

    :cond_73
    if-ge v8, v7, :cond_76

    goto :goto_5a

    :cond_76
    if-le v8, v7, :cond_79

    goto :goto_60

    .line 273
    :cond_79
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_89

    :cond_81
    add-int/lit8 v11, v11, 0x1

    move v12, v7

    move v9, v8

    goto :goto_2d

    :cond_86
    move v9, v14

    goto :goto_2d

    :cond_88
    const/4 v1, 0x0

    :goto_89
    return-object v1
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method


# virtual methods
.method public final findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 110
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 111
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_23

    .line 114
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    .line 116
    :catch_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    :goto_23
    monitor-enter p0

    .line 121
    :try_start_24
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_bd

    .line 125
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_c5

    .line 128
    array-length v0, p1

    new-array v3, v0, [[B

    move v4, v1

    .line 129
    :goto_2d
    array-length v5, p1

    if-ge v4, v5, :cond_3d

    .line 130
    aget-object v5, p1, v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3d
    move p1, v1

    :goto_3e
    const/4 v4, 0x0

    if-ge p1, v0, :cond_4d

    .line 137
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v3, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_4d
    move-object v5, v4

    :goto_4e
    if-le v0, v2, :cond_6b

    .line 151
    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    move v6, v1

    .line 152
    :goto_57
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_6b

    .line 153
    sget-object v7, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v7, p1, v6

    .line 154
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v7, p1, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    goto :goto_6c

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_6b
    move-object v7, v4

    :goto_6c
    if-eqz v7, :cond_7f

    :goto_6e
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_7f

    .line 166
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v3, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    move-object v4, p1

    goto :goto_7f

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_99

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\."

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_99
    if-nez v5, :cond_a0

    if-nez v7, :cond_a0

    .line 180
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p0

    :cond_a0
    if-eqz v5, :cond_a9

    const-string p0, "\\."

    .line 184
    invoke-virtual {v5, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_ab

    .line 185
    :cond_a9
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_ab
    if-eqz v7, :cond_b4

    const-string p1, "\\."

    .line 188
    invoke-virtual {v7, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_b6

    .line 189
    :cond_b4
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 191
    :goto_b6
    array-length v0, p0

    array-length v1, p1

    if-le v0, v1, :cond_bb

    goto :goto_bc

    :cond_bb
    move-object p0, p1

    :goto_bc
    return-object p0

    .line 122
    :cond_bd
    :try_start_bd
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c5
    move-exception p1

    .line 125
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_c5

    throw p1
.end method

.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_58

    .line 82
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 85
    array-length v2, v0

    array-length v3, p0

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-ne v2, v3, :cond_21

    aget-object v2, p0, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_21

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_21
    aget-object v2, p0, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2c

    .line 93
    array-length v0, v0

    array-length p0, p0

    goto :goto_30

    .line 96
    :cond_2c
    array-length v0, v0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    :goto_30
    sub-int/2addr v0, p0

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_3a
    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 102
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 104
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_58
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readTheList()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string/jumbo v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 315
    :cond_c
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 316
    :try_start_19
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 317
    new-array v1, v1, [B

    .line 318
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 320
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 321
    new-array v2, v2, [B

    .line 322
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_3d

    .line 323
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_2f
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3a

    .line 330
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_3a
    move-exception v0

    .line 328
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :catchall_3d
    move-exception p0

    .line 315
    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v1

    if-eqz v0, :cond_4a

    .line 323
    :try_start_42
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v1
.end method

.method public final readTheListUninterruptibly()V
    .registers 5

    const/4 v0, 0x0

    .line 291
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    goto :goto_2a

    :catch_10
    move-exception p0

    .line 297
    :try_start_11
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "Failed to read public suffix list"

    invoke-virtual {v1, v2, v3, p0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    if-eqz v0, :cond_24

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    return-void

    .line 294
    :catch_25
    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_e

    const/4 v0, 0x1

    goto :goto_1

    :goto_2a
    if-eqz v0, :cond_33

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    throw p0
.end method

.method public setListBytes([B[B)V
    .registers 3

    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
