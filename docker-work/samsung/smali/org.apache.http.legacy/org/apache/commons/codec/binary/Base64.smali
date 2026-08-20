.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 58
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 102
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    .line 103
    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_1f

    .line 108
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 110
    .end local v1    # "i":I
    :cond_1f
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_21
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2f

    .line 111
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 113
    .end local v0    # "i":I
    :cond_2f
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_31
    const/16 v1, 0x61

    if-lt v0, v1, :cond_41

    .line 114
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 116
    .end local v0    # "i":I
    :cond_41
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_43
    const/16 v1, 0x30

    if-lt v0, v1, :cond_53

    .line 117
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 120
    .end local v0    # "i":I
    :cond_53
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 121
    const/16 v3, 0x2f

    const/16 v4, 0x3f

    aput-byte v4, v0, v3

    .line 123
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_62
    const/16 v5, 0x19

    if-gt v0, v5, :cond_70

    .line 124
    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v6, v0, 0x41

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 127
    .end local v0    # "i":I
    :cond_70
    const/16 v0, 0x1a

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_73
    const/16 v6, 0x33

    if-gt v0, v6, :cond_83

    .line 128
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v5, 0x61

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 131
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_83
    const/16 v0, 0x34

    .restart local v0    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_86
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_96

    .line 132
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v5, 0x30

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 135
    .end local v0    # "i":I
    .end local v5    # "j":I
    :cond_96
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v1, v0, v2

    .line 136
    aput-byte v3, v0, v4

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .registers 16
    .param p0, "base64Data"    # [B

    .line 379
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 382
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 383
    new-array v0, v1, [B

    return-object v0

    .line 386
    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 387
    .local v0, "numberQuadruple":I
    const/4 v2, 0x0

    .line 388
    .local v2, "decodedData":[B
    const/4 v3, 0x0

    .local v3, "b1":B
    const/4 v4, 0x0

    .local v4, "b2":B
    const/4 v5, 0x0

    .local v5, "b3":B
    const/4 v6, 0x0

    .local v6, "b4":B
    const/4 v7, 0x0

    .local v7, "marker0":B
    const/4 v8, 0x0

    .line 392
    .local v8, "marker1":B
    const/4 v9, 0x0

    .line 393
    .local v9, "encodedIndex":I
    const/4 v10, 0x0

    .line 396
    .local v10, "dataIndex":I
    array-length v11, p0

    .line 398
    .local v11, "lastData":I
    :cond_18
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_27

    .line 399
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_18

    .line 400
    new-array v1, v1, [B

    return-object v1

    .line 403
    :cond_27
    sub-int v1, v11, v0

    new-array v1, v1, [B

    .line 406
    .end local v2    # "decodedData":[B
    .end local v11    # "lastData":I
    .local v1, "decodedData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_95

    .line 407
    mul-int/lit8 v10, v2, 0x4

    .line 408
    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    .line 409
    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    .line 411
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    .line 412
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    .line 414
    if-eq v7, v13, :cond_6b

    if-eq v8, v13, :cond_6b

    .line 416
    aget-byte v5, v11, v7

    .line 417
    aget-byte v6, v11, v8

    .line 419
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 420
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 422
    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    goto :goto_90

    .line 423
    :cond_6b
    if-ne v7, v13, :cond_76

    .line 425
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    goto :goto_90

    .line 426
    :cond_76
    if-ne v8, v13, :cond_90

    .line 428
    aget-byte v5, v11, v7

    .line 430
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 431
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 434
    :cond_90
    :goto_90
    add-int/lit8 v9, v9, 0x3

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 436
    .end local v2    # "i":I
    :cond_95
    return-object v1
.end method

.method static discardNonBase64([B)[B
    .registers 6
    .param p0, "data"    # [B

    .line 479
    array-length v0, p0

    new-array v0, v0, [B

    .line 480
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 482
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 483
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 484
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesCopied":I
    .local v3, "bytesCopied":I
    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    .line 482
    .end local v3    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 488
    .end local v2    # "i":I
    :cond_1a
    new-array v2, v1, [B

    .line 490
    .local v2, "packedData":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    return-object v2
.end method

.method static discardWhitespace([B)[B
    .registers 6
    .param p0, "data"    # [B

    .line 447
    array-length v0, p0

    new-array v0, v0, [B

    .line 448
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 450
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_19

    .line 451
    aget-byte v3, p0, v2

    sparse-switch v3, :sswitch_data_20

    .line 458
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesCopied":I
    .local v3, "bytesCopied":I
    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    goto :goto_16

    .line 456
    .end local v3    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    :sswitch_15
    nop

    .line 450
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 462
    .end local v2    # "i":I
    :cond_19
    new-array v2, v1, [B

    .line 464
    .local v2, "packedData":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    return-object v2

    :sswitch_data_20
    .sparse-switch
        0x9 -> :sswitch_15
        0xa -> :sswitch_15
        0xd -> :sswitch_15
        0x20 -> :sswitch_15
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .line 183
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 28
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .line 238
    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    .line 239
    .local v1, "lengthDataBits":I
    rem-int/lit8 v3, v1, 0x18

    .line 240
    .local v3, "fewerThan24bits":I
    div-int/lit8 v4, v1, 0x18

    .line 241
    .local v4, "numberTriplets":I
    const/4 v5, 0x0

    .line 242
    .local v5, "encodedData":[B
    const/4 v6, 0x0

    .line 243
    .local v6, "encodedDataLength":I
    const/4 v7, 0x0

    .line 245
    .local v7, "nbrChunks":I
    if-eqz v3, :cond_14

    .line 247
    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x4

    .end local v6    # "encodedDataLength":I
    .local v8, "encodedDataLength":I
    goto :goto_16

    .line 250
    .end local v8    # "encodedDataLength":I
    .restart local v6    # "encodedDataLength":I
    :cond_14
    mul-int/lit8 v8, v4, 0x4

    .line 256
    .end local v6    # "encodedDataLength":I
    .restart local v8    # "encodedDataLength":I
    :goto_16
    if-eqz p1, :cond_2d

    .line 259
    sget-object v9, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v10, v9

    if-nez v10, :cond_1f

    const/4 v10, 0x0

    goto :goto_29

    :cond_1f
    int-to-float v10, v8

    const/high16 v11, 0x42980000    # 76.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    :goto_29
    move v7, v10

    .line 260
    array-length v9, v9

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    .line 263
    :cond_2d
    new-array v5, v8, [B

    .line 265
    const/4 v9, 0x0

    .local v9, "k":B
    const/4 v10, 0x0

    .local v10, "l":B
    const/4 v11, 0x0

    .local v11, "b1":B
    const/4 v12, 0x0

    .local v12, "b2":B
    const/4 v13, 0x0

    .line 267
    .local v13, "b3":B
    const/4 v14, 0x0

    .line 268
    .local v14, "encodedIndex":I
    const/4 v15, 0x0

    .line 269
    .local v15, "dataIndex":I
    const/16 v16, 0x0

    .line 270
    .local v16, "i":I
    const/16 v17, 0x4c

    .line 271
    .local v17, "nextSeparatorIndex":I
    const/16 v18, 0x0

    .line 274
    .local v18, "chunksSoFar":I
    const/16 v16, 0x0

    move/from16 v2, v16

    move/from16 v6, v17

    move/from16 v25, v18

    move/from16 v18, v1

    move/from16 v1, v25

    .end local v16    # "i":I
    .end local v17    # "nextSeparatorIndex":I
    .local v1, "chunksSoFar":I
    .local v2, "i":I
    .local v6, "nextSeparatorIndex":I
    .local v18, "lengthDataBits":I
    :goto_48
    if-ge v2, v4, :cond_e6

    .line 275
    mul-int/lit8 v15, v2, 0x3

    .line 276
    aget-byte v11, v0, v15

    .line 277
    add-int/lit8 v19, v15, 0x1

    aget-byte v12, v0, v19

    .line 278
    add-int/lit8 v19, v15, 0x2

    aget-byte v13, v0, v19

    .line 282
    move/from16 v19, v4

    .end local v4    # "numberTriplets":I
    .local v19, "numberTriplets":I
    and-int/lit8 v4, v12, 0xf

    int-to-byte v10, v4

    .line 283
    and-int/lit8 v4, v11, 0x3

    int-to-byte v9, v4

    .line 286
    and-int/lit8 v4, v11, -0x80

    if-nez v4, :cond_65

    shr-int/lit8 v4, v11, 0x2

    goto :goto_69

    :cond_65
    shr-int/lit8 v4, v11, 0x2

    xor-int/lit16 v4, v4, 0xc0

    :goto_69
    int-to-byte v4, v4

    .line 288
    .local v4, "val1":B
    and-int/lit8 v20, v12, -0x80

    if-nez v20, :cond_73

    move/from16 v20, v11

    .end local v11    # "b1":B
    .local v20, "b1":B
    shr-int/lit8 v11, v12, 0x4

    goto :goto_79

    .end local v20    # "b1":B
    .restart local v11    # "b1":B
    :cond_73
    move/from16 v20, v11

    .end local v11    # "b1":B
    .restart local v20    # "b1":B
    shr-int/lit8 v11, v12, 0x4

    xor-int/lit16 v11, v11, 0xf0

    :goto_79
    int-to-byte v11, v11

    .line 290
    .local v11, "val2":B
    and-int/lit8 v21, v13, -0x80

    if-nez v21, :cond_83

    move/from16 v21, v12

    .end local v12    # "b2":B
    .local v21, "b2":B
    shr-int/lit8 v12, v13, 0x6

    goto :goto_89

    .end local v21    # "b2":B
    .restart local v12    # "b2":B
    :cond_83
    move/from16 v21, v12

    .end local v12    # "b2":B
    .restart local v21    # "b2":B
    shr-int/lit8 v12, v13, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_89
    int-to-byte v12, v12

    .line 292
    .local v12, "val3":B
    sget-object v22, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v22, v4

    aput-byte v23, v5, v14

    .line 296
    add-int/lit8 v23, v14, 0x1

    shl-int/lit8 v24, v9, 0x4

    or-int v24, v11, v24

    aget-byte v24, v22, v24

    aput-byte v24, v5, v23

    .line 298
    add-int/lit8 v23, v14, 0x2

    shl-int/lit8 v24, v10, 0x2

    or-int v24, v24, v12

    aget-byte v24, v22, v24

    aput-byte v24, v5, v23

    .line 300
    add-int/lit8 v23, v14, 0x3

    and-int/lit8 v24, v13, 0x3f

    aget-byte v22, v22, v24

    aput-byte v22, v5, v23

    .line 302
    add-int/lit8 v14, v14, 0x4

    .line 305
    if-eqz p1, :cond_d2

    .line 307
    if-ne v14, v6, :cond_cb

    .line 308
    move/from16 v22, v4

    .end local v4    # "val1":B
    .local v22, "val1":B
    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move/from16 v23, v6

    .end local v6    # "nextSeparatorIndex":I
    .local v23, "nextSeparatorIndex":I
    array-length v6, v4

    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "k":B
    .local v24, "k":B
    invoke-static {v4, v9, v5, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    .line 315
    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x4c

    array-length v9, v4

    mul-int/2addr v9, v1

    add-int/2addr v6, v9

    .line 318
    .end local v23    # "nextSeparatorIndex":I
    .restart local v6    # "nextSeparatorIndex":I
    array-length v4, v4

    add-int/2addr v14, v4

    goto :goto_da

    .line 307
    .end local v22    # "val1":B
    .end local v24    # "k":B
    .restart local v4    # "val1":B
    .restart local v9    # "k":B
    :cond_cb
    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v9

    .end local v4    # "val1":B
    .end local v6    # "nextSeparatorIndex":I
    .end local v9    # "k":B
    .restart local v22    # "val1":B
    .restart local v23    # "nextSeparatorIndex":I
    .restart local v24    # "k":B
    goto :goto_d8

    .line 305
    .end local v22    # "val1":B
    .end local v23    # "nextSeparatorIndex":I
    .end local v24    # "k":B
    .restart local v4    # "val1":B
    .restart local v6    # "nextSeparatorIndex":I
    .restart local v9    # "k":B
    :cond_d2
    move/from16 v22, v4

    move/from16 v23, v6

    move/from16 v24, v9

    .line 274
    .end local v4    # "val1":B
    .end local v6    # "nextSeparatorIndex":I
    .end local v9    # "k":B
    .end local v11    # "val2":B
    .end local v12    # "val3":B
    .restart local v23    # "nextSeparatorIndex":I
    .restart local v24    # "k":B
    :goto_d8
    move/from16 v6, v23

    .end local v23    # "nextSeparatorIndex":I
    .restart local v6    # "nextSeparatorIndex":I
    :goto_da
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v9, v24

    goto/16 :goto_48

    .line 324
    .end local v19    # "numberTriplets":I
    .end local v20    # "b1":B
    .end local v21    # "b2":B
    .end local v24    # "k":B
    .local v4, "numberTriplets":I
    .restart local v9    # "k":B
    .local v11, "b1":B
    .local v12, "b2":B
    :cond_e6
    move/from16 v19, v4

    move/from16 v23, v6

    .end local v4    # "numberTriplets":I
    .end local v6    # "nextSeparatorIndex":I
    .restart local v19    # "numberTriplets":I
    .restart local v23    # "nextSeparatorIndex":I
    mul-int/lit8 v4, v2, 0x3

    .line 326
    .end local v15    # "dataIndex":I
    .local v4, "dataIndex":I
    const/16 v6, 0x3d

    const/16 v15, 0x8

    if-ne v3, v15, :cond_11a

    .line 327
    aget-byte v11, v0, v4

    .line 328
    and-int/lit8 v15, v11, 0x3

    int-to-byte v9, v15

    .line 332
    and-int/lit8 v15, v11, -0x80

    if-nez v15, :cond_fe

    shr-int/lit8 v15, v11, 0x2

    goto :goto_102

    :cond_fe
    shr-int/lit8 v15, v11, 0x2

    xor-int/lit16 v15, v15, 0xc0

    :goto_102
    int-to-byte v15, v15

    .line 333
    .local v15, "val1":B
    sget-object v16, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v20, v16, v15

    aput-byte v20, v5, v14

    .line 334
    add-int/lit8 v20, v14, 0x1

    shl-int/lit8 v21, v9, 0x4

    aget-byte v16, v16, v21

    aput-byte v16, v5, v20

    .line 335
    add-int/lit8 v16, v14, 0x2

    aput-byte v6, v5, v16

    .line 336
    add-int/lit8 v16, v14, 0x3

    aput-byte v6, v5, v16

    .end local v15    # "val1":B
    goto :goto_15f

    .line 337
    :cond_11a
    const/16 v15, 0x10

    if-ne v3, v15, :cond_15f

    .line 339
    aget-byte v11, v0, v4

    .line 340
    add-int/lit8 v15, v4, 0x1

    aget-byte v12, v0, v15

    .line 341
    and-int/lit8 v15, v12, 0xf

    int-to-byte v10, v15

    .line 342
    and-int/lit8 v15, v11, 0x3

    int-to-byte v9, v15

    .line 345
    and-int/lit8 v15, v11, -0x80

    if-nez v15, :cond_131

    shr-int/lit8 v15, v11, 0x2

    goto :goto_135

    :cond_131
    shr-int/lit8 v15, v11, 0x2

    xor-int/lit16 v15, v15, 0xc0

    :goto_135
    int-to-byte v15, v15

    .line 347
    .restart local v15    # "val1":B
    and-int/lit8 v16, v12, -0x80

    shr-int/lit8 v6, v12, 0x4

    if-nez v16, :cond_13d

    goto :goto_13f

    :cond_13d
    xor-int/lit16 v6, v6, 0xf0

    :goto_13f
    int-to-byte v6, v6

    .line 349
    .local v6, "val2":B
    sget-object v20, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v21, v20, v15

    aput-byte v21, v5, v14

    .line 350
    add-int/lit8 v21, v14, 0x1

    shl-int/lit8 v22, v9, 0x4

    or-int v22, v6, v22

    aget-byte v22, v20, v22

    aput-byte v22, v5, v21

    .line 352
    add-int/lit8 v21, v14, 0x2

    shl-int/lit8 v22, v10, 0x2

    aget-byte v20, v20, v22

    aput-byte v20, v5, v21

    .line 353
    add-int/lit8 v20, v14, 0x3

    const/16 v16, 0x3d

    aput-byte v16, v5, v20

    goto :goto_160

    .line 337
    .end local v6    # "val2":B
    .end local v15    # "val1":B
    :cond_15f
    :goto_15f
    nop

    .line 356
    :goto_160
    if-eqz p1, :cond_174

    .line 358
    if-ge v1, v7, :cond_171

    .line 359
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v15, v6

    sub-int v15, v8, v15

    array-length v0, v6

    move/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "chunksSoFar":I
    .local v16, "chunksSoFar":I
    invoke-static {v6, v1, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_176

    .line 358
    .end local v16    # "chunksSoFar":I
    .restart local v1    # "chunksSoFar":I
    :cond_171
    move/from16 v16, v1

    .end local v1    # "chunksSoFar":I
    .restart local v16    # "chunksSoFar":I
    goto :goto_176

    .line 356
    .end local v16    # "chunksSoFar":I
    .restart local v1    # "chunksSoFar":I
    :cond_174
    move/from16 v16, v1

    .line 368
    .end local v1    # "chunksSoFar":I
    .restart local v16    # "chunksSoFar":I
    :goto_176
    return-object v5
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .line 194
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .registers 5
    .param p0, "arrayOctect"    # [B

    .line 159
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 161
    array-length v0, p0

    .line 162
    .local v0, "length":I
    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 165
    return v1

    .line 167
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 168
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_16

    .line 169
    const/4 v1, 0x0

    return v1

    .line 167
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 172
    .end local v2    # "i":I
    :cond_19
    return v1
.end method

.method private static isBase64(B)Z
    .registers 4
    .param p0, "octect"    # B

    .line 140
    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_6

    .line 141
    return v0

    .line 142
    :cond_6
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_f
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 211
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 214
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 212
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "pArray"    # [B

    .line 225
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 511
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 515
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 512
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .registers 3
    .param p1, "pArray"    # [B

    .line 526
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
