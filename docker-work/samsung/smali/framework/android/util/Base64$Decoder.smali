.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final greylist-max-o DECODE:[I

.field private static final greylist-max-o DECODE_WEBSAFE:[I

.field private static final greylist-max-o EQUALS:I = -0x2

.field private static final greylist-max-o SKIP:I = -0x1


# instance fields
.field private final greylist-max-o alphabet:[I

.field private greylist-max-o state:I

.field private greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 183
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Landroid/util/Base64$Decoder;->DECODE:[I

    .line 206
    new-array v0, v0, [I

    fill-array-data v0, :array_216

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I[B)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 243
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 244
    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 246
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_c

    sget-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    goto :goto_e

    :cond_c
    sget-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_e
    iput-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Base64$Decoder;->state:I

    .line 248
    iput v0, p0, Landroid/util/Base64$Decoder;->value:I

    .line 249
    return-void
.end method


# virtual methods
.method public greylist-max-o maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 256
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public greylist-max-o process([BIIZ)Z
    .registers 16
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 266
    iget v0, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    return v1

    .line 268
    :cond_7
    move v0, p2

    .line 269
    .local v0, "p":I
    add-int/2addr p3, p2

    .line 276
    iget v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 277
    .local v3, "state":I
    iget v4, p0, Landroid/util/Base64$Decoder;->value:I

    .line 278
    .local v4, "value":I
    const/4 v5, 0x0

    .line 279
    .local v5, "op":I
    iget-object v6, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 280
    .local v6, "output":[B
    iget-object v7, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    .line 282
    .local v7, "alphabet":[I
    :goto_12
    if-ge v0, p3, :cond_e4

    .line 297
    if-nez v3, :cond_5d

    .line 298
    :goto_16
    add-int/lit8 v8, v0, 0x4

    if-gt v8, p3, :cond_59

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    or-int/2addr v8, v9

    move v4, v8

    if-ltz v8, :cond_59

    .line 303
    add-int/lit8 v8, v5, 0x2

    int-to-byte v9, v4

    aput-byte v9, v6, v8

    .line 304
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 305
    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 306
    add-int/lit8 v5, v5, 0x3

    .line 307
    add-int/lit8 v0, v0, 0x4

    goto :goto_16

    .line 309
    :cond_59
    if-lt v0, p3, :cond_5d

    goto/16 :goto_e4

    .line 317
    :cond_5d
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "p":I
    .local v8, "p":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget v0, v7, v0

    .line 319
    .local v0, "d":I
    const/4 v9, -0x2

    const/4 v10, -0x1

    packed-switch v3, :pswitch_data_116

    goto/16 :goto_e1

    .line 387
    :pswitch_6c
    if-eq v0, v10, :cond_e1

    .line 388
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 389
    return v1

    .line 378
    :pswitch_71
    if-ne v0, v9, :cond_77

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e1

    .line 380
    :cond_77
    if-eq v0, v10, :cond_e1

    .line 381
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 382
    return v1

    .line 356
    :pswitch_7c
    if-ltz v0, :cond_97

    .line 358
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 359
    add-int/lit8 v9, v5, 0x2

    int-to-byte v10, v4

    aput-byte v10, v6, v9

    .line 360
    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0x8

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 361
    shr-int/lit8 v9, v4, 0x10

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    .line 362
    add-int/lit8 v5, v5, 0x3

    .line 363
    const/4 v3, 0x0

    goto :goto_e1

    .line 364
    :cond_97
    if-ne v0, v9, :cond_a9

    .line 367
    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0x2

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 368
    shr-int/lit8 v9, v4, 0xa

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    .line 369
    add-int/lit8 v5, v5, 0x2

    .line 370
    const/4 v3, 0x5

    goto :goto_e1

    .line 371
    :cond_a9
    if-eq v0, v10, :cond_e1

    .line 372
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 373
    return v1

    .line 341
    :pswitch_ae
    if-ltz v0, :cond_b7

    .line 342
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 344
    :cond_b7
    if-ne v0, v9, :cond_c3

    .line 347
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "op":I
    .local v9, "op":I
    shr-int/lit8 v10, v4, 0x4

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 348
    const/4 v3, 0x4

    move v5, v9

    goto :goto_e1

    .line 349
    .end local v9    # "op":I
    .restart local v5    # "op":I
    :cond_c3
    if-eq v0, v10, :cond_e1

    .line 350
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 351
    return v1

    .line 331
    :pswitch_c8
    if-ltz v0, :cond_d1

    .line 332
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 334
    :cond_d1
    if-eq v0, v10, :cond_e1

    .line 335
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 336
    return v1

    .line 321
    :pswitch_d6
    if-ltz v0, :cond_dc

    .line 322
    move v4, v0

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 324
    :cond_dc
    if-eq v0, v10, :cond_e1

    .line 325
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 326
    return v1

    .line 393
    .end local v0    # "d":I
    :cond_e1
    :goto_e1
    move v0, v8

    goto/16 :goto_12

    .line 395
    .end local v8    # "p":I
    .local v0, "p":I
    :cond_e4
    :goto_e4
    const/4 v8, 0x1

    if-nez p4, :cond_ee

    .line 398
    iput v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 399
    iput v4, p0, Landroid/util/Base64$Decoder;->value:I

    .line 400
    iput v5, p0, Landroid/util/Base64$Decoder;->op:I

    .line 401
    return v8

    .line 407
    :cond_ee
    packed-switch v3, :pswitch_data_126

    goto :goto_111

    .line 429
    :pswitch_f2
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 430
    return v1

    .line 424
    :pswitch_f5
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "op":I
    .local v1, "op":I
    shr-int/lit8 v2, v4, 0xa

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    .line 425
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "op":I
    .restart local v5    # "op":I
    shr-int/lit8 v2, v4, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    .line 426
    goto :goto_111

    .line 419
    :pswitch_104
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "op":I
    .restart local v1    # "op":I
    shr-int/lit8 v2, v4, 0x4

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    .line 420
    move v5, v1

    goto :goto_111

    .line 414
    .end local v1    # "op":I
    .restart local v5    # "op":I
    :pswitch_10d
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 415
    return v1

    .line 410
    :pswitch_110
    nop

    .line 437
    :goto_111
    iput v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 438
    iput v5, p0, Landroid/util/Base64$Decoder;->op:I

    .line 439
    return v8

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_c8
        :pswitch_ae
        :pswitch_7c
        :pswitch_71
        :pswitch_6c
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_110
        :pswitch_10d
        :pswitch_104
        :pswitch_f5
        :pswitch_f2
    .end packed-switch
.end method
