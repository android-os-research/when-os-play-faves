.class public Lorg/brotli/enc/PreparedDictionaryGenerator;
.super Ljava/lang/Object;
.source "PreparedDictionaryGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;
    }
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:J = 0x1fe35a7bd3579bd3L

.field private static final MAGIC:I = -0x21431220


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Ljava/nio/ByteBuffer;)Lorg/brotli/enc/PreparedDictionary;
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x3

    const/16 v2, 0x28

    const/4 v3, 0x5

    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lorg/brotli/enc/PreparedDictionaryGenerator;->generate(Ljava/nio/ByteBuffer;IIII)Lorg/brotli/enc/PreparedDictionary;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/nio/ByteBuffer;IIII)Lorg/brotli/enc/PreparedDictionary;
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    const/16 v5, 0xc

    if-gt v4, v5, :cond_1c7

    const/16 v5, 0x18

    if-ge v1, v5, :cond_1bf

    sub-int v6, v1, v2

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1b7

    const/4 v6, 0x1

    shl-int v4, v6, v4

    shl-int v7, v6, v1

    shl-int v8, v6, v2

    add-int/lit8 v9, v8, -0x1

    rsub-int/lit8 v10, v1, 0x40

    const-wide/16 v11, -0x1

    rsub-int/lit8 v13, v3, 0x40

    ushr-long/2addr v11, v13

    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    const/16 v14, 0x8

    if-lt v13, v14, :cond_1af

    .line 67
    new-array v15, v7, [S

    .line 68
    new-array v5, v7, [I

    .line 69
    new-array v6, v13, [I

    const-wide/16 v18, 0x0

    const/4 v14, 0x0

    :goto_3c
    const-wide/16 v20, 0xff

    move/from16 v22, v9

    const/4 v9, 0x7

    if-ge v14, v9, :cond_58

    .line 73
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    int-to-long v1, v9

    and-long v1, v1, v20

    mul-int/lit8 v9, v14, 0x8

    shl-long/2addr v1, v9

    or-long v18, v18, v1

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v9, v22

    goto :goto_3c

    :cond_58
    const/16 v1, 0x8

    shl-long v18, v18, v1

    const/4 v2, 0x0

    :goto_5d
    add-int/lit8 v9, v2, 0x7

    if-ge v9, v13, :cond_95

    ushr-long v18, v18, v1

    .line 78
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move/from16 v23, v2

    int-to-long v1, v9

    and-long v1, v1, v20

    const/16 v9, 0x38

    shl-long/2addr v1, v9

    or-long v18, v18, v1

    and-long v1, v18, v11

    const-wide v24, 0x1fe35a7bd3579bd3L    # 4.510769962630363E-155

    mul-long v1, v1, v24

    ushr-long/2addr v1, v10

    long-to-int v1, v1

    .line 81
    aget-short v2, v15, v1

    if-nez v2, :cond_82

    const/4 v14, -0x1

    goto :goto_84

    .line 82
    :cond_82
    aget v14, v5, v1

    :goto_84
    aput v14, v6, v23

    .line 83
    aput v23, v5, v1

    add-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_8d

    move v2, v4

    :cond_8d
    int-to-short v2, v2

    .line 88
    aput-short v2, v15, v1

    add-int/lit8 v2, v23, 0x1

    const/16 v1, 0x8

    goto :goto_5d

    .line 92
    :cond_95
    new-array v1, v8, [I

    .line 93
    new-array v2, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9b
    if-ge v9, v8, :cond_d2

    .line 97
    aput v4, v1, v9

    .line 100
    :goto_9f
    aget v11, v1, v9

    move v14, v9

    const/4 v12, 0x0

    :goto_a3
    move/from16 v18, v4

    if-ge v14, v7, :cond_ba

    .line 103
    aget-short v4, v15, v14

    const v0, 0xffff

    if-lt v12, v0, :cond_b0

    const/4 v0, 0x1

    goto :goto_bb

    :cond_b0
    if-le v4, v11, :cond_b3

    move v4, v11

    :cond_b3
    add-int/2addr v12, v4

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    move/from16 v4, v18

    goto :goto_a3

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    if-nez v0, :cond_c7

    .line 116
    aput v12, v2, v9

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v18

    goto :goto_9b

    .line 120
    :cond_c7
    aget v0, v1, v9

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    aput v0, v1, v9

    move-object/from16 v0, p0

    move/from16 v4, v18

    goto :goto_9f

    :cond_d2
    mul-int/lit8 v0, v8, 0x4

    mul-int/lit8 v4, v7, 0x2

    mul-int/lit8 v9, v10, 0x4

    add-int/lit8 v11, v0, 0x18

    add-int/2addr v11, v4

    add-int/2addr v11, v9

    add-int/2addr v11, v13

    .line 130
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 131
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 132
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    .line 135
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    move-object/from16 v19, v11

    const/16 v16, 0x18

    add-int/lit8 v11, v18, 0x18

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 137
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v0, v16, v0

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 139
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v4, v16, v4

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 141
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v9, v16, v9

    invoke-virtual {v12, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    const v12, -0x21431220

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 144
    invoke-virtual {v14, v9, v12}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v9, 0x1

    .line 145
    invoke-virtual {v14, v9, v10}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v9, 0x2

    .line 146
    invoke-virtual {v14, v9, v13}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v9, 0x3

    .line 147
    invoke-virtual {v14, v9, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v3, 0x4

    move/from16 v9, p1

    .line 148
    invoke-virtual {v14, v3, v9}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v3, 0x5

    move/from16 v9, p2

    .line 149
    invoke-virtual {v14, v3, v9}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_14b
    if-ge v9, v8, :cond_159

    .line 153
    invoke-virtual {v11, v9, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 154
    aget v10, v2, v9

    add-int/2addr v3, v10

    const/4 v10, 0x0

    .line 155
    aput v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_14b

    :cond_159
    const/4 v10, 0x0

    move v9, v10

    :goto_15b
    if-ge v9, v7, :cond_19f

    and-int v3, v9, v22

    .line 160
    aget-short v8, v15, v9

    .line 161
    aget v12, v1, v3

    if-le v8, v12, :cond_166

    move v8, v12

    :cond_166
    if-nez v8, :cond_16d

    const/4 v12, -0x1

    .line 165
    invoke-virtual {v0, v9, v12}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto :goto_19c

    :cond_16d
    const/4 v12, -0x1

    .line 168
    aget v13, v2, v3

    int-to-short v14, v13

    .line 169
    invoke-virtual {v0, v9, v14}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 170
    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v14

    add-int/2addr v13, v14

    .line 171
    aget v14, v2, v3

    add-int/2addr v14, v8

    aput v14, v2, v3

    .line 172
    aget v3, v5, v9

    move v14, v13

    move v13, v10

    :goto_182
    if-ge v13, v8, :cond_190

    add-int/lit8 v17, v14, 0x1

    .line 174
    invoke-virtual {v4, v14, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 175
    aget v3, v6, v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v17

    goto :goto_182

    :cond_190
    add-int/lit8 v14, v14, -0x1

    .line 178
    invoke-virtual {v4, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/high16 v8, -0x80000000

    or-int/2addr v3, v8

    invoke-virtual {v4, v14, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    :goto_19c
    add-int/lit8 v9, v9, 0x1

    goto :goto_15b

    :cond_19f
    move-object/from16 v3, p0

    move-object/from16 v8, v16

    .line 181
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 183
    new-instance v0, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;

    const/4 v1, 0x0

    move-object/from16 v2, v19

    invoke-direct {v0, v2, v1}, Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl;-><init>(Ljava/nio/ByteBuffer;Lorg/brotli/enc/PreparedDictionaryGenerator$PreparedDictionaryImpl-IA;)V

    return-object v0

    .line 63
    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src is too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slotBits is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bucketBits is too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blockBits is too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
