.class public final Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# static fields
.field public static final AAC:I = 0x4000000

.field public static final AAC_ADIF:I = 0x14000000

.field public static final AAC_ADTS:I = 0x1e000000

.field public static final AAC_ADTS_ELD:I = 0x1e000200

.field public static final AAC_ADTS_ERLC:I = 0x1e000040

.field public static final AAC_ADTS_HE_V1:I = 0x1e000010

.field public static final AAC_ADTS_HE_V2:I = 0x1e000100

.field public static final AAC_ADTS_LC:I = 0x1e000002

.field public static final AAC_ADTS_LD:I = 0x1e000080

.field public static final AAC_ADTS_LTP:I = 0x1e000008

.field public static final AAC_ADTS_MAIN:I = 0x1e000001

.field public static final AAC_ADTS_SCALABLE:I = 0x1e000020

.field public static final AAC_ADTS_SSR:I = 0x1e000004

.field public static final AAC_ELD:I = 0x4000200

.field public static final AAC_ERLC:I = 0x4000040

.field public static final AAC_HE_V1:I = 0x4000010

.field public static final AAC_HE_V2:I = 0x4000100

.field public static final AAC_LC:I = 0x4000002

.field public static final AAC_LD:I = 0x4000080

.field public static final AAC_LTP:I = 0x4000008

.field public static final AAC_MAIN:I = 0x4000001

.field public static final AAC_SCALABLE:I = 0x4000020

.field public static final AAC_SSR:I = 0x4000004

.field public static final AAC_SUB_ELD:I = 0x200

.field public static final AAC_SUB_ERLC:I = 0x40

.field public static final AAC_SUB_HE_V1:I = 0x10

.field public static final AAC_SUB_HE_V2:I = 0x100

.field public static final AAC_SUB_LC:I = 0x2

.field public static final AAC_SUB_LD:I = 0x80

.field public static final AAC_SUB_LTP:I = 0x8

.field public static final AAC_SUB_MAIN:I = 0x1

.field public static final AAC_SUB_SCALABLE:I = 0x20

.field public static final AAC_SUB_SSR:I = 0x4

.field public static final AC3:I = 0x9000000

.field public static final AC4:I = 0x22000000

.field public static final ALAC:I = 0x1c000000

.field public static final AMR_NB:I = 0x2000000

.field public static final AMR_SUB_NONE:I = 0x0

.field public static final AMR_WB:I = 0x3000000

.field public static final AMR_WB_PLUS:I = 0x17000000

.field public static final APE:I = 0x1d000000

.field public static final APTX:I = 0x20000000

.field public static final APTX_HD:I = 0x21000000

.field public static final DEFAULT:I = 0x0

.field public static final DOLBY_TRUEHD:I = 0xe000000

.field public static final DSD:I = 0x1a000000

.field public static final DTS:I = 0xb000000

.field public static final DTS_HD:I = 0xc000000

.field public static final EVRC:I = 0x10000000

.field public static final EVRCB:I = 0x11000000

.field public static final EVRCNW:I = 0x13000000

.field public static final EVRCWB:I = 0x12000000

.field public static final E_AC3:I = 0xa000000

.field public static final FLAC:I = 0x1b000000

.field public static final HE_AAC_V1:I = 0x5000000

.field public static final HE_AAC_V2:I = 0x6000000

.field public static final IEC61937:I = 0xd000000

.field public static final INVALID:I = -0x1

.field public static final LDAC:I = 0x23000000

.field public static final MAIN_MASK:I = -0x1000000

.field public static final MP2:I = 0x18000000

.field public static final MP3:I = 0x1000000

.field public static final MP3_SUB_NONE:I = 0x0

.field public static final OPUS:I = 0x8000000

.field public static final PCM:I = 0x0

.field public static final PCM_16_BIT:I = 0x1

.field public static final PCM_24_BIT_PACKED:I = 0x6

.field public static final PCM_32_BIT:I = 0x3

.field public static final PCM_8_24_BIT:I = 0x4

.field public static final PCM_8_BIT:I = 0x2

.field public static final PCM_FLOAT:I = 0x5

.field public static final PCM_SUB_16_BIT:I = 0x1

.field public static final PCM_SUB_24_BIT_PACKED:I = 0x6

.field public static final PCM_SUB_32_BIT:I = 0x3

.field public static final PCM_SUB_8_24_BIT:I = 0x4

.field public static final PCM_SUB_8_BIT:I = 0x2

.field public static final PCM_SUB_FLOAT:I = 0x5

.field public static final QCELP:I = 0x19000000

.field public static final SBC:I = 0x1f000000

.field public static final SUB_MASK:I = 0xffffff

.field public static final VORBIS:I = 0x7000000

.field public static final VORBIS_SUB_NONE:I = 0x0

.field public static final WMA:I = 0x15000000

.field public static final WMA_PRO:I = 0x16000000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 17

    move/from16 v0, p0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    const-string v2, "INVALID"

    .line 373
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v2, "DEFAULT"

    .line 376
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PCM"

    .line 377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_29

    const-string v4, "MP3"

    .line 379
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_29
    const/high16 v2, 0x2000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_35

    const-string v4, "AMR_NB"

    .line 383
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_35
    const/high16 v2, 0x3000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_41

    const-string v4, "AMR_WB"

    .line 387
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_41
    const/high16 v2, 0x4000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_4d

    const-string v4, "AAC"

    .line 391
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_4d
    const/high16 v2, 0x5000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_59

    const-string v4, "HE_AAC_V1"

    .line 395
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_59
    const/high16 v2, 0x6000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_65

    const-string v4, "HE_AAC_V2"

    .line 399
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_65
    const/high16 v2, 0x7000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_71

    const-string v4, "VORBIS"

    .line 403
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_71
    const/high16 v2, 0x8000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_7d

    const-string v4, "OPUS"

    .line 407
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_7d
    const/high16 v2, 0x9000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_89

    const-string v4, "AC3"

    .line 411
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_89
    const/high16 v2, 0xa000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_95

    const-string v4, "E_AC3"

    .line 415
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_95
    const/high16 v2, 0xb000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_a1

    const-string v4, "DTS"

    .line 419
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_a1
    const/high16 v2, 0xc000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_ad

    const-string v4, "DTS_HD"

    .line 423
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_ad
    const/high16 v2, 0xd000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_b9

    const-string v4, "IEC61937"

    .line 427
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_b9
    const/high16 v2, 0xe000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_c5

    const-string v4, "DOLBY_TRUEHD"

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_c5
    const/high16 v2, 0x10000000

    and-int v4, v0, v2

    if-ne v4, v2, :cond_d1

    const-string v4, "EVRC"

    .line 435
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v3, v2

    :cond_d1
    const/high16 v2, 0x11000000

    and-int/2addr v2, v0

    const/high16 v4, 0x11000000

    if-ne v2, v4, :cond_e0

    const-string v2, "EVRCB"

    .line 439
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x11000000

    or-int/2addr v3, v2

    :cond_e0
    const/high16 v2, 0x12000000

    and-int/2addr v2, v0

    const/high16 v4, 0x12000000

    if-ne v2, v4, :cond_ef

    const-string v2, "EVRCWB"

    .line 443
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x12000000

    or-int/2addr v3, v2

    :cond_ef
    const/high16 v2, 0x13000000

    and-int/2addr v2, v0

    const/high16 v4, 0x13000000

    if-ne v2, v4, :cond_fe

    const-string v2, "EVRCNW"

    .line 447
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x13000000

    or-int/2addr v3, v2

    :cond_fe
    const/high16 v2, 0x14000000

    and-int/2addr v2, v0

    const/high16 v4, 0x14000000

    if-ne v2, v4, :cond_10d

    const-string v2, "AAC_ADIF"

    .line 451
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x14000000

    or-int/2addr v3, v2

    :cond_10d
    const/high16 v2, 0x15000000

    and-int/2addr v2, v0

    const/high16 v4, 0x15000000

    if-ne v2, v4, :cond_11c

    const-string v2, "WMA"

    .line 455
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x15000000

    or-int/2addr v3, v2

    :cond_11c
    const/high16 v2, 0x16000000

    and-int/2addr v2, v0

    const/high16 v4, 0x16000000

    if-ne v2, v4, :cond_12b

    const-string v2, "WMA_PRO"

    .line 459
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x16000000

    or-int/2addr v3, v2

    :cond_12b
    const/high16 v2, 0x17000000

    and-int/2addr v2, v0

    const/high16 v4, 0x17000000

    if-ne v2, v4, :cond_13a

    const-string v2, "AMR_WB_PLUS"

    .line 463
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x17000000

    or-int/2addr v3, v2

    :cond_13a
    const/high16 v2, 0x18000000

    and-int/2addr v2, v0

    const/high16 v4, 0x18000000

    if-ne v2, v4, :cond_149

    const-string v2, "MP2"

    .line 467
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x18000000

    or-int/2addr v3, v2

    :cond_149
    const/high16 v2, 0x19000000

    and-int/2addr v2, v0

    const/high16 v4, 0x19000000

    if-ne v2, v4, :cond_158

    const-string v2, "QCELP"

    .line 471
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x19000000

    or-int/2addr v3, v2

    :cond_158
    const/high16 v2, 0x1a000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1a000000

    if-ne v2, v4, :cond_167

    const-string v2, "DSD"

    .line 475
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1a000000

    or-int/2addr v3, v2

    :cond_167
    const/high16 v2, 0x1b000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1b000000

    if-ne v2, v4, :cond_176

    const-string v2, "FLAC"

    .line 479
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1b000000

    or-int/2addr v3, v2

    :cond_176
    const/high16 v2, 0x1c000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1c000000

    if-ne v2, v4, :cond_185

    const-string v2, "ALAC"

    .line 483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1c000000

    or-int/2addr v3, v2

    :cond_185
    const/high16 v2, 0x1d000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1d000000

    if-ne v2, v4, :cond_194

    const-string v2, "APE"

    .line 487
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1d000000

    or-int/2addr v3, v2

    :cond_194
    const/high16 v2, 0x1e000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1e000000

    if-ne v2, v4, :cond_1a3

    const-string v2, "AAC_ADTS"

    .line 491
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1e000000

    or-int/2addr v3, v2

    :cond_1a3
    const/high16 v2, 0x1f000000

    and-int/2addr v2, v0

    const/high16 v4, 0x1f000000

    if-ne v2, v4, :cond_1b2

    const-string v2, "SBC"

    .line 495
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1f000000

    or-int/2addr v3, v2

    :cond_1b2
    const/high16 v2, 0x20000000

    and-int/2addr v2, v0

    const/high16 v4, 0x20000000

    if-ne v2, v4, :cond_1c1

    const-string v2, "APTX"

    .line 499
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x20000000

    or-int/2addr v3, v2

    :cond_1c1
    const/high16 v2, 0x21000000

    and-int/2addr v2, v0

    const/high16 v4, 0x21000000

    if-ne v2, v4, :cond_1d0

    const-string v2, "APTX_HD"

    .line 503
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x21000000

    or-int/2addr v3, v2

    :cond_1d0
    const/high16 v2, 0x22000000

    and-int/2addr v2, v0

    const/high16 v4, 0x22000000

    if-ne v2, v4, :cond_1df

    const-string v2, "AC4"

    .line 507
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x22000000

    or-int/2addr v3, v2

    :cond_1df
    const/high16 v2, 0x23000000

    and-int/2addr v2, v0

    const/high16 v4, 0x23000000

    if-ne v2, v4, :cond_1ee

    const-string v2, "LDAC"

    .line 511
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x23000000

    or-int/2addr v3, v2

    :cond_1ee
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_1fd

    const-string v2, "MAIN_MASK"

    .line 515
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, -0x1000000

    or-int/2addr v3, v2

    :cond_1fd
    const v2, 0xffffff

    and-int/2addr v2, v0

    const v4, 0xffffff

    if-ne v2, v4, :cond_20f

    const-string v2, "SUB_MASK"

    .line 519
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xffffff

    or-int/2addr v3, v2

    :cond_20f
    and-int/lit8 v2, v0, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_21b

    const-string v5, "PCM_SUB_16_BIT"

    .line 523
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x1

    :cond_21b
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_227

    const-string v7, "PCM_SUB_8_BIT"

    .line 527
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x2

    :cond_227
    and-int/lit8 v7, v0, 0x3

    const/4 v8, 0x3

    if-ne v7, v8, :cond_233

    const-string v9, "PCM_SUB_32_BIT"

    .line 531
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x3

    :cond_233
    and-int/lit8 v9, v0, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_23f

    const-string v11, "PCM_SUB_8_24_BIT"

    .line 535
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x4

    :cond_23f
    and-int/lit8 v11, v0, 0x5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_24b

    const-string v13, "PCM_SUB_FLOAT"

    .line 539
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x5

    :cond_24b
    and-int/lit8 v13, v0, 0x6

    const/4 v14, 0x6

    if-ne v13, v14, :cond_257

    const-string v15, "PCM_SUB_24_BIT_PACKED"

    .line 543
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x6

    :cond_257
    const-string v15, "MP3_SUB_NONE"

    .line 546
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v15, "AMR_SUB_NONE"

    .line 547
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v4, :cond_26a

    const-string v15, "AAC_SUB_MAIN"

    .line 549
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x1

    :cond_26a
    if-ne v5, v6, :cond_273

    const-string v15, "AAC_SUB_LC"

    .line 553
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x2

    :cond_273
    if-ne v9, v10, :cond_27c

    const-string v15, "AAC_SUB_SSR"

    .line 557
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x4

    :cond_27c
    and-int/lit8 v15, v0, 0x8

    const/16 v14, 0x8

    if-ne v15, v14, :cond_289

    const-string v14, "AAC_SUB_LTP"

    .line 561
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x8

    :cond_289
    and-int/lit8 v14, v0, 0x10

    const/16 v15, 0x10

    if-ne v14, v15, :cond_296

    const-string v14, "AAC_SUB_HE_V1"

    .line 565
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x10

    :cond_296
    and-int/lit8 v14, v0, 0x20

    const/16 v15, 0x20

    if-ne v14, v15, :cond_2a3

    const-string v14, "AAC_SUB_SCALABLE"

    .line 569
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x20

    :cond_2a3
    and-int/lit8 v14, v0, 0x40

    const/16 v15, 0x40

    if-ne v14, v15, :cond_2b0

    const-string v14, "AAC_SUB_ERLC"

    .line 573
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x40

    :cond_2b0
    and-int/lit16 v14, v0, 0x80

    const/16 v15, 0x80

    if-ne v14, v15, :cond_2bd

    const-string v14, "AAC_SUB_LD"

    .line 577
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v3, v3, 0x80

    :cond_2bd
    and-int/lit16 v14, v0, 0x100

    const/16 v15, 0x100

    if-ne v14, v15, :cond_2ca

    const-string v14, "AAC_SUB_HE_V2"

    .line 581
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v3, v3, 0x100

    :cond_2ca
    and-int/lit16 v14, v0, 0x200

    const/16 v15, 0x200

    if-ne v14, v15, :cond_2d7

    const-string v14, "AAC_SUB_ELD"

    .line 585
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v3, v3, 0x200

    :cond_2d7
    const-string v14, "VORBIS_SUB_NONE"

    .line 588
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v4, :cond_2e5

    const-string v2, "PCM_16_BIT"

    .line 590
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x1

    :cond_2e5
    if-ne v5, v6, :cond_2ee

    const-string v2, "PCM_8_BIT"

    .line 594
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x2

    :cond_2ee
    if-ne v7, v8, :cond_2f7

    const-string v2, "PCM_32_BIT"

    .line 598
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x3

    :cond_2f7
    if-ne v9, v10, :cond_300

    const-string v2, "PCM_8_24_BIT"

    .line 602
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x4

    :cond_300
    if-ne v11, v12, :cond_309

    const-string v2, "PCM_FLOAT"

    .line 606
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x5

    :cond_309
    const/4 v2, 0x6

    if-ne v13, v2, :cond_313

    const-string v2, "PCM_24_BIT_PACKED"

    .line 610
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x6

    :cond_313
    const v2, 0x4000001

    and-int/2addr v2, v0

    const v4, 0x4000001

    if-ne v2, v4, :cond_325

    const-string v2, "AAC_MAIN"

    .line 614
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000001

    or-int/2addr v3, v2

    :cond_325
    const v2, 0x4000002

    and-int/2addr v2, v0

    const v4, 0x4000002

    if-ne v2, v4, :cond_337

    const-string v2, "AAC_LC"

    .line 618
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000002

    or-int/2addr v3, v2

    :cond_337
    const v2, 0x4000004

    and-int/2addr v2, v0

    const v4, 0x4000004

    if-ne v2, v4, :cond_349

    const-string v2, "AAC_SSR"

    .line 622
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000004

    or-int/2addr v3, v2

    :cond_349
    const v2, 0x4000008

    and-int/2addr v2, v0

    const v4, 0x4000008

    if-ne v2, v4, :cond_35b

    const-string v2, "AAC_LTP"

    .line 626
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000008

    or-int/2addr v3, v2

    :cond_35b
    const v2, 0x4000010

    and-int/2addr v2, v0

    const v4, 0x4000010

    if-ne v2, v4, :cond_36d

    const-string v2, "AAC_HE_V1"

    .line 630
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000010

    or-int/2addr v3, v2

    :cond_36d
    const v2, 0x4000020

    and-int/2addr v2, v0

    const v4, 0x4000020

    if-ne v2, v4, :cond_37f

    const-string v2, "AAC_SCALABLE"

    .line 634
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000020

    or-int/2addr v3, v2

    :cond_37f
    const v2, 0x4000040

    and-int/2addr v2, v0

    const v4, 0x4000040

    if-ne v2, v4, :cond_391

    const-string v2, "AAC_ERLC"

    .line 638
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000040

    or-int/2addr v3, v2

    :cond_391
    const v2, 0x4000080

    and-int/2addr v2, v0

    const v4, 0x4000080

    if-ne v2, v4, :cond_3a3

    const-string v2, "AAC_LD"

    .line 642
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000080

    or-int/2addr v3, v2

    :cond_3a3
    const v2, 0x4000100

    and-int/2addr v2, v0

    const v4, 0x4000100

    if-ne v2, v4, :cond_3b5

    const-string v2, "AAC_HE_V2"

    .line 646
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000100

    or-int/2addr v3, v2

    :cond_3b5
    const v2, 0x4000200

    and-int/2addr v2, v0

    const v4, 0x4000200

    if-ne v2, v4, :cond_3c7

    const-string v2, "AAC_ELD"

    .line 650
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000200

    or-int/2addr v3, v2

    :cond_3c7
    const v2, 0x1e000001

    and-int/2addr v2, v0

    const v4, 0x1e000001

    if-ne v2, v4, :cond_3d9

    const-string v2, "AAC_ADTS_MAIN"

    .line 654
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000001

    or-int/2addr v3, v2

    :cond_3d9
    const v2, 0x1e000002

    and-int/2addr v2, v0

    const v4, 0x1e000002

    if-ne v2, v4, :cond_3eb

    const-string v2, "AAC_ADTS_LC"

    .line 658
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000002

    or-int/2addr v3, v2

    :cond_3eb
    const v2, 0x1e000004

    and-int/2addr v2, v0

    const v4, 0x1e000004

    if-ne v2, v4, :cond_3fd

    const-string v2, "AAC_ADTS_SSR"

    .line 662
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000004

    or-int/2addr v3, v2

    :cond_3fd
    const v2, 0x1e000008

    and-int/2addr v2, v0

    const v4, 0x1e000008

    if-ne v2, v4, :cond_40f

    const-string v2, "AAC_ADTS_LTP"

    .line 666
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000008

    or-int/2addr v3, v2

    :cond_40f
    const v2, 0x1e000010

    and-int/2addr v2, v0

    const v4, 0x1e000010

    if-ne v2, v4, :cond_421

    const-string v2, "AAC_ADTS_HE_V1"

    .line 670
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000010

    or-int/2addr v3, v2

    :cond_421
    const v2, 0x1e000020

    and-int/2addr v2, v0

    const v4, 0x1e000020

    if-ne v2, v4, :cond_433

    const-string v2, "AAC_ADTS_SCALABLE"

    .line 674
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000020

    or-int/2addr v3, v2

    :cond_433
    const v2, 0x1e000040

    and-int/2addr v2, v0

    const v4, 0x1e000040

    if-ne v2, v4, :cond_445

    const-string v2, "AAC_ADTS_ERLC"

    .line 678
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000040

    or-int/2addr v3, v2

    :cond_445
    const v2, 0x1e000080

    and-int/2addr v2, v0

    const v4, 0x1e000080

    if-ne v2, v4, :cond_457

    const-string v2, "AAC_ADTS_LD"

    .line 682
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000080

    or-int/2addr v3, v2

    :cond_457
    const v2, 0x1e000100

    and-int/2addr v2, v0

    const v4, 0x1e000100

    if-ne v2, v4, :cond_469

    const-string v2, "AAC_ADTS_HE_V2"

    .line 686
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000100

    or-int/2addr v3, v2

    :cond_469
    const v2, 0x1e000200

    and-int/2addr v2, v0

    const v4, 0x1e000200

    if-ne v2, v4, :cond_47b

    const-string v2, "AAC_ADTS_ELD"

    .line 690
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000200

    or-int/2addr v3, v2

    :cond_47b
    if-eq v0, v3, :cond_497

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v3

    and-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_497
    const-string v0, " | "

    .line 696
    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 8

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string p0, "INVALID"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    const-string p0, "DEFAULT"

    return-object p0

    :cond_b
    if-nez p0, :cond_10

    const-string p0, "PCM"

    return-object p0

    :cond_10
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_17

    const-string p0, "MP3"

    return-object p0

    :cond_17
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_1e

    const-string p0, "AMR_NB"

    return-object p0

    :cond_1e
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_25

    const-string p0, "AMR_WB"

    return-object p0

    :cond_25
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_2c

    const-string p0, "AAC"

    return-object p0

    :cond_2c
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_33

    const-string p0, "HE_AAC_V1"

    return-object p0

    :cond_33
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_3a

    const-string p0, "HE_AAC_V2"

    return-object p0

    :cond_3a
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_41

    const-string p0, "VORBIS"

    return-object p0

    :cond_41
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_48

    const-string p0, "OPUS"

    return-object p0

    :cond_48
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_4f

    const-string p0, "AC3"

    return-object p0

    :cond_4f
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_56

    const-string p0, "E_AC3"

    return-object p0

    :cond_56
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_5d

    const-string p0, "DTS"

    return-object p0

    :cond_5d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_64

    const-string p0, "DTS_HD"

    return-object p0

    :cond_64
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_6b

    const-string p0, "IEC61937"

    return-object p0

    :cond_6b
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_72

    const-string p0, "DOLBY_TRUEHD"

    return-object p0

    :cond_72
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_79

    const-string p0, "EVRC"

    return-object p0

    :cond_79
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_80

    const-string p0, "EVRCB"

    return-object p0

    :cond_80
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_87

    const-string p0, "EVRCWB"

    return-object p0

    :cond_87
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_8e

    const-string p0, "EVRCNW"

    return-object p0

    :cond_8e
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_95

    const-string p0, "AAC_ADIF"

    return-object p0

    :cond_95
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_9c

    const-string p0, "WMA"

    return-object p0

    :cond_9c
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_a3

    const-string p0, "WMA_PRO"

    return-object p0

    :cond_a3
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_aa

    const-string p0, "AMR_WB_PLUS"

    return-object p0

    :cond_aa
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_b1

    const-string p0, "MP2"

    return-object p0

    :cond_b1
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_b8

    const-string p0, "QCELP"

    return-object p0

    :cond_b8
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_bf

    const-string p0, "DSD"

    return-object p0

    :cond_bf
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_c6

    const-string p0, "FLAC"

    return-object p0

    :cond_c6
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_cd

    const-string p0, "ALAC"

    return-object p0

    :cond_cd
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_d4

    const-string p0, "APE"

    return-object p0

    :cond_d4
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_db

    const-string p0, "AAC_ADTS"

    return-object p0

    :cond_db
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_e2

    const-string p0, "SBC"

    return-object p0

    :cond_e2
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_e9

    const-string p0, "APTX"

    return-object p0

    :cond_e9
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_f0

    const-string p0, "APTX_HD"

    return-object p0

    :cond_f0
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_f7

    const-string p0, "AC4"

    return-object p0

    :cond_f7
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_fe

    const-string p0, "LDAC"

    return-object p0

    :cond_fe
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_105

    const-string p0, "MAIN_MASK"

    return-object p0

    :cond_105
    const v0, 0xffffff

    if-ne p0, v0, :cond_10d

    const-string p0, "SUB_MASK"

    return-object p0

    :cond_10d
    const/4 v0, 0x1

    if-ne p0, v0, :cond_113

    const-string p0, "PCM_SUB_16_BIT"

    return-object p0

    :cond_113
    const/4 v1, 0x2

    if-ne p0, v1, :cond_119

    const-string p0, "PCM_SUB_8_BIT"

    return-object p0

    :cond_119
    const/4 v2, 0x3

    if-ne p0, v2, :cond_11f

    const-string p0, "PCM_SUB_32_BIT"

    return-object p0

    :cond_11f
    const/4 v3, 0x4

    if-ne p0, v3, :cond_125

    const-string p0, "PCM_SUB_8_24_BIT"

    return-object p0

    :cond_125
    const/4 v4, 0x5

    if-ne p0, v4, :cond_12b

    const-string p0, "PCM_SUB_FLOAT"

    return-object p0

    :cond_12b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_131

    const-string p0, "PCM_SUB_24_BIT_PACKED"

    return-object p0

    :cond_131
    if-nez p0, :cond_136

    const-string p0, "MP3_SUB_NONE"

    return-object p0

    :cond_136
    if-nez p0, :cond_13b

    const-string p0, "AMR_SUB_NONE"

    return-object p0

    :cond_13b
    if-ne p0, v0, :cond_140

    const-string p0, "AAC_SUB_MAIN"

    return-object p0

    :cond_140
    if-ne p0, v1, :cond_145

    const-string p0, "AAC_SUB_LC"

    return-object p0

    :cond_145
    if-ne p0, v3, :cond_14a

    const-string p0, "AAC_SUB_SSR"

    return-object p0

    :cond_14a
    const/16 v6, 0x8

    if-ne p0, v6, :cond_151

    const-string p0, "AAC_SUB_LTP"

    return-object p0

    :cond_151
    const/16 v6, 0x10

    if-ne p0, v6, :cond_158

    const-string p0, "AAC_SUB_HE_V1"

    return-object p0

    :cond_158
    const/16 v6, 0x20

    if-ne p0, v6, :cond_15f

    const-string p0, "AAC_SUB_SCALABLE"

    return-object p0

    :cond_15f
    const/16 v6, 0x40

    if-ne p0, v6, :cond_166

    const-string p0, "AAC_SUB_ERLC"

    return-object p0

    :cond_166
    const/16 v6, 0x80

    if-ne p0, v6, :cond_16d

    const-string p0, "AAC_SUB_LD"

    return-object p0

    :cond_16d
    const/16 v6, 0x100

    if-ne p0, v6, :cond_174

    const-string p0, "AAC_SUB_HE_V2"

    return-object p0

    :cond_174
    const/16 v6, 0x200

    if-ne p0, v6, :cond_17b

    const-string p0, "AAC_SUB_ELD"

    return-object p0

    :cond_17b
    if-nez p0, :cond_180

    const-string p0, "VORBIS_SUB_NONE"

    return-object p0

    :cond_180
    if-ne p0, v0, :cond_185

    const-string p0, "PCM_16_BIT"

    return-object p0

    :cond_185
    if-ne p0, v1, :cond_18a

    const-string p0, "PCM_8_BIT"

    return-object p0

    :cond_18a
    if-ne p0, v2, :cond_18f

    const-string p0, "PCM_32_BIT"

    return-object p0

    :cond_18f
    if-ne p0, v3, :cond_194

    const-string p0, "PCM_8_24_BIT"

    return-object p0

    :cond_194
    if-ne p0, v4, :cond_199

    const-string p0, "PCM_FLOAT"

    return-object p0

    :cond_199
    if-ne p0, v5, :cond_19e

    const-string p0, "PCM_24_BIT_PACKED"

    return-object p0

    :cond_19e
    const v0, 0x4000001

    if-ne p0, v0, :cond_1a6

    const-string p0, "AAC_MAIN"

    return-object p0

    :cond_1a6
    const v0, 0x4000002

    if-ne p0, v0, :cond_1ae

    const-string p0, "AAC_LC"

    return-object p0

    :cond_1ae
    const v0, 0x4000004

    if-ne p0, v0, :cond_1b6

    const-string p0, "AAC_SSR"

    return-object p0

    :cond_1b6
    const v0, 0x4000008

    if-ne p0, v0, :cond_1be

    const-string p0, "AAC_LTP"

    return-object p0

    :cond_1be
    const v0, 0x4000010

    if-ne p0, v0, :cond_1c6

    const-string p0, "AAC_HE_V1"

    return-object p0

    :cond_1c6
    const v0, 0x4000020

    if-ne p0, v0, :cond_1ce

    const-string p0, "AAC_SCALABLE"

    return-object p0

    :cond_1ce
    const v0, 0x4000040

    if-ne p0, v0, :cond_1d6

    const-string p0, "AAC_ERLC"

    return-object p0

    :cond_1d6
    const v0, 0x4000080

    if-ne p0, v0, :cond_1de

    const-string p0, "AAC_LD"

    return-object p0

    :cond_1de
    const v0, 0x4000100

    if-ne p0, v0, :cond_1e6

    const-string p0, "AAC_HE_V2"

    return-object p0

    :cond_1e6
    const v0, 0x4000200

    if-ne p0, v0, :cond_1ee

    const-string p0, "AAC_ELD"

    return-object p0

    :cond_1ee
    const v0, 0x1e000001

    if-ne p0, v0, :cond_1f6

    const-string p0, "AAC_ADTS_MAIN"

    return-object p0

    :cond_1f6
    const v0, 0x1e000002

    if-ne p0, v0, :cond_1fe

    const-string p0, "AAC_ADTS_LC"

    return-object p0

    :cond_1fe
    const v0, 0x1e000004

    if-ne p0, v0, :cond_206

    const-string p0, "AAC_ADTS_SSR"

    return-object p0

    :cond_206
    const v0, 0x1e000008

    if-ne p0, v0, :cond_20e

    const-string p0, "AAC_ADTS_LTP"

    return-object p0

    :cond_20e
    const v0, 0x1e000010

    if-ne p0, v0, :cond_216

    const-string p0, "AAC_ADTS_HE_V1"

    return-object p0

    :cond_216
    const v0, 0x1e000020

    if-ne p0, v0, :cond_21e

    const-string p0, "AAC_ADTS_SCALABLE"

    return-object p0

    :cond_21e
    const v0, 0x1e000040

    if-ne p0, v0, :cond_226

    const-string p0, "AAC_ADTS_ERLC"

    return-object p0

    :cond_226
    const v0, 0x1e000080

    if-ne p0, v0, :cond_22e

    const-string p0, "AAC_ADTS_LD"

    return-object p0

    :cond_22e
    const v0, 0x1e000100

    if-ne p0, v0, :cond_236

    const-string p0, "AAC_ADTS_HE_V2"

    return-object p0

    :cond_236
    const v0, 0x1e000200

    if-ne p0, v0, :cond_23e

    const-string p0, "AAC_ADTS_ELD"

    return-object p0

    .line 366
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
