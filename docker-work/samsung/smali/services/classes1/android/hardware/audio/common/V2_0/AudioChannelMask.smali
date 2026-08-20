.class public final Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "AudioChannelMask.java"


# static fields
.field public static final COUNT_MAX:I = 0x1e

.field public static final INDEX_HDR:I = -0x80000000

.field public static final INDEX_MASK_1:I = -0x7fffffff

.field public static final INDEX_MASK_2:I = -0x7ffffffd

.field public static final INDEX_MASK_3:I = -0x7ffffff9

.field public static final INDEX_MASK_4:I = -0x7ffffff1

.field public static final INDEX_MASK_5:I = -0x7fffffe1

.field public static final INDEX_MASK_6:I = -0x7fffffc1

.field public static final INDEX_MASK_7:I = -0x7fffff81

.field public static final INDEX_MASK_8:I = -0x7fffff01

.field public static final INVALID:I = -0x40000000

.field public static final IN_6:I = 0xfc

.field public static final IN_ALL:I = 0xfffc

.field public static final IN_BACK:I = 0x20

.field public static final IN_BACK_PROCESSED:I = 0x200

.field public static final IN_FRONT:I = 0x10

.field public static final IN_FRONT_BACK:I = 0x30

.field public static final IN_FRONT_PROCESSED:I = 0x100

.field public static final IN_LEFT:I = 0x4

.field public static final IN_LEFT_PROCESSED:I = 0x40

.field public static final IN_MONO:I = 0x10

.field public static final IN_PRESSURE:I = 0x400

.field public static final IN_RIGHT:I = 0x8

.field public static final IN_RIGHT_PROCESSED:I = 0x80

.field public static final IN_STEREO:I = 0xc

.field public static final IN_VOICE_CALL_MONO:I = 0xc010

.field public static final IN_VOICE_DNLINK:I = 0x8000

.field public static final IN_VOICE_DNLINK_MONO:I = 0x8010

.field public static final IN_VOICE_UPLINK:I = 0x4000

.field public static final IN_VOICE_UPLINK_MONO:I = 0x4010

.field public static final IN_X_AXIS:I = 0x800

.field public static final IN_Y_AXIS:I = 0x1000

.field public static final IN_Z_AXIS:I = 0x2000

.field public static final NONE:I = 0x0

.field public static final OUT_2POINT1:I = 0xb

.field public static final OUT_5POINT1:I = 0x3f

.field public static final OUT_5POINT1_BACK:I = 0x3f

.field public static final OUT_5POINT1_SIDE:I = 0x60f

.field public static final OUT_6POINT1:I = 0x13f

.field public static final OUT_7POINT1:I = 0x63f

.field public static final OUT_ALL:I = 0x3ffff

.field public static final OUT_BACK_CENTER:I = 0x100

.field public static final OUT_BACK_LEFT:I = 0x10

.field public static final OUT_BACK_RIGHT:I = 0x20

.field public static final OUT_FRONT_CENTER:I = 0x4

.field public static final OUT_FRONT_LEFT:I = 0x1

.field public static final OUT_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final OUT_FRONT_RIGHT:I = 0x2

.field public static final OUT_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final OUT_LOW_FREQUENCY:I = 0x8

.field public static final OUT_MONO:I = 0x1

.field public static final OUT_PENTA:I = 0x37

.field public static final OUT_QUAD:I = 0x33

.field public static final OUT_QUAD_BACK:I = 0x33

.field public static final OUT_QUAD_SIDE:I = 0x603

.field public static final OUT_SIDE_LEFT:I = 0x200

.field public static final OUT_SIDE_RIGHT:I = 0x400

.field public static final OUT_STEREO:I = 0x3

.field public static final OUT_SURROUND:I = 0x107

.field public static final OUT_TOP_BACK_CENTER:I = 0x10000

.field public static final OUT_TOP_BACK_LEFT:I = 0x8000

.field public static final OUT_TOP_BACK_RIGHT:I = 0x20000

.field public static final OUT_TOP_CENTER:I = 0x800

.field public static final OUT_TOP_FRONT_CENTER:I = 0x2000

.field public static final OUT_TOP_FRONT_LEFT:I = 0x1000

.field public static final OUT_TOP_FRONT_RIGHT:I = 0x4000

.field public static final REPRESENTATION_INDEX:I = 0x2

.field public static final REPRESENTATION_POSITION:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 21

    move/from16 v0, p0

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "REPRESENTATION_POSITION"

    .line 318
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    const-string v4, "REPRESENTATION_INDEX"

    .line 320
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    const-string v5, "NONE"

    .line 323
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x40000000    # -2.0f

    and-int v6, v0, v5

    if-ne v6, v5, :cond_2a

    const-string v6, "INVALID"

    .line 325
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v4, v5

    :cond_2a
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_36

    const-string v7, "OUT_FRONT_LEFT"

    .line 329
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x1

    :cond_36
    if-ne v2, v3, :cond_3f

    const-string v2, "OUT_FRONT_RIGHT"

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x2

    :cond_3f
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4b

    const-string v7, "OUT_FRONT_CENTER"

    .line 337
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x4

    :cond_4b
    and-int/lit8 v7, v0, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_58

    const-string v9, "OUT_LOW_FREQUENCY"

    .line 341
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x8

    :cond_58
    and-int/lit8 v9, v0, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_65

    const-string v11, "OUT_BACK_LEFT"

    .line 345
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x10

    :cond_65
    and-int/lit8 v11, v0, 0x20

    const/16 v12, 0x20

    if-ne v11, v12, :cond_72

    const-string v13, "OUT_BACK_RIGHT"

    .line 349
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x20

    :cond_72
    and-int/lit8 v13, v0, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_7f

    const-string v15, "OUT_FRONT_LEFT_OF_CENTER"

    .line 353
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x40

    :cond_7f
    and-int/lit16 v15, v0, 0x80

    const/16 v14, 0x80

    if-ne v15, v14, :cond_8c

    const-string v14, "OUT_FRONT_RIGHT_OF_CENTER"

    .line 357
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x80

    :cond_8c
    and-int/lit16 v14, v0, 0x100

    const/16 v12, 0x100

    if-ne v14, v12, :cond_99

    const-string v12, "OUT_BACK_CENTER"

    .line 361
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x100

    :cond_99
    and-int/lit16 v12, v0, 0x200

    const/16 v10, 0x200

    if-ne v12, v10, :cond_a6

    const-string v10, "OUT_SIDE_LEFT"

    .line 365
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x200

    :cond_a6
    and-int/lit16 v10, v0, 0x400

    const/16 v8, 0x400

    if-ne v10, v8, :cond_b3

    const-string v8, "OUT_SIDE_RIGHT"

    .line 369
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x400

    :cond_b3
    and-int/lit16 v8, v0, 0x800

    const/16 v3, 0x800

    if-ne v8, v3, :cond_c0

    const-string v3, "OUT_TOP_CENTER"

    .line 373
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x800

    :cond_c0
    and-int/lit16 v3, v0, 0x1000

    const/16 v6, 0x1000

    if-ne v3, v6, :cond_cd

    const-string v6, "OUT_TOP_FRONT_LEFT"

    .line 377
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x1000

    :cond_cd
    and-int/lit16 v6, v0, 0x2000

    move/from16 v16, v3

    const/16 v3, 0x2000

    if-ne v6, v3, :cond_dc

    const-string v3, "OUT_TOP_FRONT_CENTER"

    .line 381
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x2000

    :cond_dc
    and-int/lit16 v3, v0, 0x4000

    move/from16 v17, v6

    const/16 v6, 0x4000

    if-ne v3, v6, :cond_eb

    const-string v6, "OUT_TOP_FRONT_RIGHT"

    .line 385
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x4000

    :cond_eb
    const v6, 0x8000

    move/from16 v18, v3

    and-int v3, v0, v6

    move/from16 v19, v3

    if-ne v3, v6, :cond_fc

    const-string v3, "OUT_TOP_BACK_LEFT"

    .line 389
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v4, v6

    :cond_fc
    const/high16 v3, 0x10000

    and-int v6, v0, v3

    if-ne v6, v3, :cond_108

    const-string v6, "OUT_TOP_BACK_CENTER"

    .line 393
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v4, v3

    :cond_108
    const/high16 v3, 0x20000

    and-int v6, v0, v3

    if-ne v6, v3, :cond_114

    const-string v6, "OUT_TOP_BACK_RIGHT"

    .line 397
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v4, v3

    :cond_114
    const/4 v3, 0x1

    if-ne v5, v3, :cond_11e

    const-string v3, "OUT_MONO"

    .line 401
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x1

    :cond_11e
    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_12a

    const-string v3, "OUT_STEREO"

    .line 405
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x3

    :cond_12a
    and-int/lit8 v3, v0, 0xb

    const/16 v5, 0xb

    if-ne v3, v5, :cond_137

    const-string v3, "OUT_2POINT1"

    .line 409
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0xb

    :cond_137
    and-int/lit8 v3, v0, 0x33

    const/16 v5, 0x33

    if-ne v3, v5, :cond_144

    const-string v6, "OUT_QUAD"

    .line 413
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x33

    :cond_144
    if-ne v3, v5, :cond_14d

    const-string v3, "OUT_QUAD_BACK"

    .line 417
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x33

    :cond_14d
    and-int/lit16 v3, v0, 0x603

    const/16 v5, 0x603

    if-ne v3, v5, :cond_15a

    const-string v3, "OUT_QUAD_SIDE"

    .line 421
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x603

    :cond_15a
    and-int/lit16 v3, v0, 0x107

    const/16 v5, 0x107

    if-ne v3, v5, :cond_167

    const-string v3, "OUT_SURROUND"

    .line 425
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x107

    :cond_167
    and-int/lit8 v3, v0, 0x37

    const/16 v5, 0x37

    if-ne v3, v5, :cond_174

    const-string v3, "OUT_PENTA"

    .line 429
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x37

    :cond_174
    and-int/lit8 v3, v0, 0x3f

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_181

    const-string v6, "OUT_5POINT1"

    .line 433
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x3f

    :cond_181
    if-ne v3, v5, :cond_18a

    const-string v3, "OUT_5POINT1_BACK"

    .line 437
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x3f

    :cond_18a
    and-int/lit16 v3, v0, 0x60f

    const/16 v5, 0x60f

    if-ne v3, v5, :cond_197

    const-string v3, "OUT_5POINT1_SIDE"

    .line 441
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x60f

    :cond_197
    and-int/lit16 v3, v0, 0x13f

    const/16 v5, 0x13f

    if-ne v3, v5, :cond_1a4

    const-string v3, "OUT_6POINT1"

    .line 445
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x13f

    :cond_1a4
    and-int/lit16 v3, v0, 0x63f

    const/16 v5, 0x63f

    if-ne v3, v5, :cond_1b1

    const-string v3, "OUT_7POINT1"

    .line 449
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x63f

    :cond_1b1
    const v3, 0x3ffff

    and-int/2addr v3, v0

    const v5, 0x3ffff

    if-ne v3, v5, :cond_1c3

    const-string v3, "OUT_ALL"

    .line 453
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x3ffff

    or-int/2addr v4, v3

    :cond_1c3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1cd

    const-string v2, "IN_LEFT"

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x4

    :cond_1cd
    const/16 v2, 0x8

    if-ne v7, v2, :cond_1d8

    const-string v2, "IN_RIGHT"

    .line 461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x8

    :cond_1d8
    const/16 v2, 0x10

    if-ne v9, v2, :cond_1e3

    const-string v2, "IN_FRONT"

    .line 465
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x10

    :cond_1e3
    const/16 v2, 0x20

    if-ne v11, v2, :cond_1ee

    const-string v2, "IN_BACK"

    .line 469
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x20

    :cond_1ee
    const/16 v2, 0x40

    if-ne v13, v2, :cond_1f9

    const-string v2, "IN_LEFT_PROCESSED"

    .line 473
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x40

    :cond_1f9
    const/16 v2, 0x80

    if-ne v15, v2, :cond_204

    const-string v2, "IN_RIGHT_PROCESSED"

    .line 477
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x80

    :cond_204
    const/16 v2, 0x100

    if-ne v14, v2, :cond_20f

    const-string v2, "IN_FRONT_PROCESSED"

    .line 481
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x100

    :cond_20f
    const/16 v2, 0x200

    if-ne v12, v2, :cond_21a

    const-string v2, "IN_BACK_PROCESSED"

    .line 485
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x200

    :cond_21a
    const/16 v2, 0x400

    if-ne v10, v2, :cond_225

    const-string v2, "IN_PRESSURE"

    .line 489
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x400

    :cond_225
    const/16 v2, 0x800

    if-ne v8, v2, :cond_230

    const-string v2, "IN_X_AXIS"

    .line 493
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x800

    :cond_230
    move/from16 v2, v16

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_23d

    const-string v2, "IN_Y_AXIS"

    .line 497
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x1000

    :cond_23d
    move/from16 v2, v17

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_24a

    const-string v2, "IN_Z_AXIS"

    .line 501
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x2000

    :cond_24a
    move/from16 v2, v18

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_257

    const-string v2, "IN_VOICE_UPLINK"

    .line 505
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x4000

    :cond_257
    move/from16 v2, v19

    const v3, 0x8000

    if-ne v2, v3, :cond_264

    const-string v2, "IN_VOICE_DNLINK"

    .line 509
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v4, v3

    :cond_264
    const/16 v2, 0x10

    if-ne v9, v2, :cond_26f

    const-string v2, "IN_MONO"

    .line 513
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x10

    :cond_26f
    and-int/lit8 v2, v0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_27c

    const-string v2, "IN_STEREO"

    .line 517
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0xc

    :cond_27c
    and-int/lit8 v2, v0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_289

    const-string v2, "IN_FRONT_BACK"

    .line 521
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x30

    :cond_289
    and-int/lit16 v2, v0, 0xfc

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_296

    const-string v2, "IN_6"

    .line 525
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0xfc

    :cond_296
    and-int/lit16 v2, v0, 0x4010

    const/16 v3, 0x4010

    if-ne v2, v3, :cond_2a3

    const-string v2, "IN_VOICE_UPLINK_MONO"

    .line 529
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v4, v4, 0x4010

    :cond_2a3
    const v2, 0x8010

    and-int/2addr v2, v0

    const v3, 0x8010

    if-ne v2, v3, :cond_2b5

    const-string v2, "IN_VOICE_DNLINK_MONO"

    .line 533
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x8010

    or-int/2addr v4, v2

    :cond_2b5
    const v2, 0xc010

    and-int/2addr v2, v0

    const v3, 0xc010

    if-ne v2, v3, :cond_2c7

    const-string v2, "IN_VOICE_CALL_MONO"

    .line 537
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xc010

    or-int/2addr v4, v2

    :cond_2c7
    const v2, 0xfffc

    and-int/2addr v2, v0

    const v3, 0xfffc

    if-ne v2, v3, :cond_2d9

    const-string v2, "IN_ALL"

    .line 541
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xfffc

    or-int/2addr v4, v2

    :cond_2d9
    and-int/lit8 v2, v0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2e6

    const-string v2, "COUNT_MAX"

    .line 545
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v4, v4, 0x1e

    :cond_2e6
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2f5

    const-string v2, "INDEX_HDR"

    .line 549
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, -0x80000000

    or-int/2addr v4, v2

    :cond_2f5
    const v2, -0x7fffffff

    and-int/2addr v2, v0

    const v3, -0x7fffffff

    if-ne v2, v3, :cond_307

    const-string v2, "INDEX_MASK_1"

    .line 553
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffff

    or-int/2addr v4, v2

    :cond_307
    const v2, -0x7ffffffd

    and-int/2addr v2, v0

    const v3, -0x7ffffffd

    if-ne v2, v3, :cond_319

    const-string v2, "INDEX_MASK_2"

    .line 557
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffffd

    or-int/2addr v4, v2

    :cond_319
    const v2, -0x7ffffff9

    and-int/2addr v2, v0

    const v3, -0x7ffffff9

    if-ne v2, v3, :cond_32b

    const-string v2, "INDEX_MASK_3"

    .line 561
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffff9

    or-int/2addr v4, v2

    :cond_32b
    const v2, -0x7ffffff1

    and-int/2addr v2, v0

    const v3, -0x7ffffff1

    if-ne v2, v3, :cond_33d

    const-string v2, "INDEX_MASK_4"

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffff1

    or-int/2addr v4, v2

    :cond_33d
    const v2, -0x7fffffe1

    and-int/2addr v2, v0

    const v3, -0x7fffffe1

    if-ne v2, v3, :cond_34f

    const-string v2, "INDEX_MASK_5"

    .line 569
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffe1

    or-int/2addr v4, v2

    :cond_34f
    const v2, -0x7fffffc1

    and-int/2addr v2, v0

    const v3, -0x7fffffc1

    if-ne v2, v3, :cond_361

    const-string v2, "INDEX_MASK_6"

    .line 573
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffc1

    or-int/2addr v4, v2

    :cond_361
    const v2, -0x7fffff81

    and-int/2addr v2, v0

    const v3, -0x7fffff81

    if-ne v2, v3, :cond_373

    const-string v2, "INDEX_MASK_7"

    .line 577
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffff81

    or-int/2addr v4, v2

    :cond_373
    const v2, -0x7fffff01

    and-int/2addr v2, v0

    const v3, -0x7fffff01

    if-ne v2, v3, :cond_385

    const-string v2, "INDEX_MASK_8"

    .line 581
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffff01

    or-int/2addr v4, v2

    :cond_385
    if-eq v0, v4, :cond_3a1

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v4

    and-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a1
    const-string v0, " | "

    .line 587
    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 17

    move/from16 v0, p0

    if-nez v0, :cond_7

    const-string v0, "REPRESENTATION_POSITION"

    return-object v0

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const-string v0, "REPRESENTATION_INDEX"

    return-object v0

    :cond_d
    if-nez v0, :cond_12

    const-string v0, "NONE"

    return-object v0

    :cond_12
    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_19

    const-string v0, "INVALID"

    return-object v0

    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    const-string v0, "OUT_FRONT_LEFT"

    return-object v0

    :cond_1f
    if-ne v0, v1, :cond_24

    const-string v0, "OUT_FRONT_RIGHT"

    return-object v0

    :cond_24
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    const-string v0, "OUT_FRONT_CENTER"

    return-object v0

    :cond_2a
    const/16 v3, 0x8

    if-ne v0, v3, :cond_31

    const-string v0, "OUT_LOW_FREQUENCY"

    return-object v0

    :cond_31
    const/16 v4, 0x10

    if-ne v0, v4, :cond_38

    const-string v0, "OUT_BACK_LEFT"

    return-object v0

    :cond_38
    const/16 v5, 0x20

    if-ne v0, v5, :cond_3f

    const-string v0, "OUT_BACK_RIGHT"

    return-object v0

    :cond_3f
    const/16 v6, 0x40

    if-ne v0, v6, :cond_46

    const-string v0, "OUT_FRONT_LEFT_OF_CENTER"

    return-object v0

    :cond_46
    const/16 v7, 0x80

    if-ne v0, v7, :cond_4d

    const-string v0, "OUT_FRONT_RIGHT_OF_CENTER"

    return-object v0

    :cond_4d
    const/16 v8, 0x100

    if-ne v0, v8, :cond_54

    const-string v0, "OUT_BACK_CENTER"

    return-object v0

    :cond_54
    const/16 v9, 0x200

    if-ne v0, v9, :cond_5b

    const-string v0, "OUT_SIDE_LEFT"

    return-object v0

    :cond_5b
    const/16 v10, 0x400

    if-ne v0, v10, :cond_62

    const-string v0, "OUT_SIDE_RIGHT"

    return-object v0

    :cond_62
    const/16 v11, 0x800

    if-ne v0, v11, :cond_69

    const-string v0, "OUT_TOP_CENTER"

    return-object v0

    :cond_69
    const/16 v12, 0x1000

    if-ne v0, v12, :cond_70

    const-string v0, "OUT_TOP_FRONT_LEFT"

    return-object v0

    :cond_70
    const/16 v13, 0x2000

    if-ne v0, v13, :cond_77

    const-string v0, "OUT_TOP_FRONT_CENTER"

    return-object v0

    :cond_77
    const/16 v14, 0x4000

    if-ne v0, v14, :cond_7e

    const-string v0, "OUT_TOP_FRONT_RIGHT"

    return-object v0

    :cond_7e
    const v15, 0x8000

    if-ne v0, v15, :cond_86

    const-string v0, "OUT_TOP_BACK_LEFT"

    return-object v0

    :cond_86
    const/high16 v15, 0x10000

    if-ne v0, v15, :cond_8d

    const-string v0, "OUT_TOP_BACK_CENTER"

    return-object v0

    :cond_8d
    const/high16 v15, 0x20000

    if-ne v0, v15, :cond_94

    const-string v0, "OUT_TOP_BACK_RIGHT"

    return-object v0

    :cond_94
    if-ne v0, v2, :cond_99

    const-string v0, "OUT_MONO"

    return-object v0

    :cond_99
    const/4 v2, 0x3

    if-ne v0, v2, :cond_9f

    const-string v0, "OUT_STEREO"

    return-object v0

    :cond_9f
    const/16 v2, 0xb

    if-ne v0, v2, :cond_a6

    const-string v0, "OUT_2POINT1"

    return-object v0

    :cond_a6
    const/16 v2, 0x33

    if-ne v0, v2, :cond_ad

    const-string v0, "OUT_QUAD"

    return-object v0

    :cond_ad
    if-ne v0, v2, :cond_b2

    const-string v0, "OUT_QUAD_BACK"

    return-object v0

    :cond_b2
    const/16 v2, 0x603

    if-ne v0, v2, :cond_b9

    const-string v0, "OUT_QUAD_SIDE"

    return-object v0

    :cond_b9
    const/16 v2, 0x107

    if-ne v0, v2, :cond_c0

    const-string v0, "OUT_SURROUND"

    return-object v0

    :cond_c0
    const/16 v2, 0x37

    if-ne v0, v2, :cond_c7

    const-string v0, "OUT_PENTA"

    return-object v0

    :cond_c7
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_ce

    const-string v0, "OUT_5POINT1"

    return-object v0

    :cond_ce
    if-ne v0, v2, :cond_d3

    const-string v0, "OUT_5POINT1_BACK"

    return-object v0

    :cond_d3
    const/16 v2, 0x60f

    if-ne v0, v2, :cond_da

    const-string v0, "OUT_5POINT1_SIDE"

    return-object v0

    :cond_da
    const/16 v2, 0x13f

    if-ne v0, v2, :cond_e1

    const-string v0, "OUT_6POINT1"

    return-object v0

    :cond_e1
    const/16 v2, 0x63f

    if-ne v0, v2, :cond_e8

    const-string v0, "OUT_7POINT1"

    return-object v0

    :cond_e8
    const v2, 0x3ffff

    if-ne v0, v2, :cond_f0

    const-string v0, "OUT_ALL"

    return-object v0

    :cond_f0
    if-ne v0, v1, :cond_f5

    const-string v0, "IN_LEFT"

    return-object v0

    :cond_f5
    if-ne v0, v3, :cond_fa

    const-string v0, "IN_RIGHT"

    return-object v0

    :cond_fa
    if-ne v0, v4, :cond_ff

    const-string v0, "IN_FRONT"

    return-object v0

    :cond_ff
    if-ne v0, v5, :cond_104

    const-string v0, "IN_BACK"

    return-object v0

    :cond_104
    if-ne v0, v6, :cond_109

    const-string v0, "IN_LEFT_PROCESSED"

    return-object v0

    :cond_109
    if-ne v0, v7, :cond_10e

    const-string v0, "IN_RIGHT_PROCESSED"

    return-object v0

    :cond_10e
    if-ne v0, v8, :cond_113

    const-string v0, "IN_FRONT_PROCESSED"

    return-object v0

    :cond_113
    if-ne v0, v9, :cond_118

    const-string v0, "IN_BACK_PROCESSED"

    return-object v0

    :cond_118
    if-ne v0, v10, :cond_11d

    const-string v0, "IN_PRESSURE"

    return-object v0

    :cond_11d
    if-ne v0, v11, :cond_122

    const-string v0, "IN_X_AXIS"

    return-object v0

    :cond_122
    if-ne v0, v12, :cond_127

    const-string v0, "IN_Y_AXIS"

    return-object v0

    :cond_127
    if-ne v0, v13, :cond_12c

    const-string v0, "IN_Z_AXIS"

    return-object v0

    :cond_12c
    if-ne v0, v14, :cond_131

    const-string v0, "IN_VOICE_UPLINK"

    return-object v0

    :cond_131
    const v1, 0x8000

    if-ne v0, v1, :cond_139

    const-string v0, "IN_VOICE_DNLINK"

    return-object v0

    :cond_139
    if-ne v0, v4, :cond_13e

    const-string v0, "IN_MONO"

    return-object v0

    :cond_13e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_145

    const-string v0, "IN_STEREO"

    return-object v0

    :cond_145
    const/16 v1, 0x30

    if-ne v0, v1, :cond_14c

    const-string v0, "IN_FRONT_BACK"

    return-object v0

    :cond_14c
    const/16 v1, 0xfc

    if-ne v0, v1, :cond_153

    const-string v0, "IN_6"

    return-object v0

    :cond_153
    const/16 v1, 0x4010

    if-ne v0, v1, :cond_15a

    const-string v0, "IN_VOICE_UPLINK_MONO"

    return-object v0

    :cond_15a
    const v1, 0x8010

    if-ne v0, v1, :cond_162

    const-string v0, "IN_VOICE_DNLINK_MONO"

    return-object v0

    :cond_162
    const v1, 0xc010

    if-ne v0, v1, :cond_16a

    const-string v0, "IN_VOICE_CALL_MONO"

    return-object v0

    :cond_16a
    const v1, 0xfffc

    if-ne v0, v1, :cond_172

    const-string v0, "IN_ALL"

    return-object v0

    :cond_172
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_179

    const-string v0, "COUNT_MAX"

    return-object v0

    :cond_179
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_180

    const-string v0, "INDEX_HDR"

    return-object v0

    :cond_180
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_188

    const-string v0, "INDEX_MASK_1"

    return-object v0

    :cond_188
    const v1, -0x7ffffffd

    if-ne v0, v1, :cond_190

    const-string v0, "INDEX_MASK_2"

    return-object v0

    :cond_190
    const v1, -0x7ffffff9

    if-ne v0, v1, :cond_198

    const-string v0, "INDEX_MASK_3"

    return-object v0

    :cond_198
    const v1, -0x7ffffff1

    if-ne v0, v1, :cond_1a0

    const-string v0, "INDEX_MASK_4"

    return-object v0

    :cond_1a0
    const v1, -0x7fffffe1

    if-ne v0, v1, :cond_1a8

    const-string v0, "INDEX_MASK_5"

    return-object v0

    :cond_1a8
    const v1, -0x7fffffc1

    if-ne v0, v1, :cond_1b0

    const-string v0, "INDEX_MASK_6"

    return-object v0

    :cond_1b0
    const v1, -0x7fffff81

    if-ne v0, v1, :cond_1b8

    const-string v0, "INDEX_MASK_7"

    return-object v0

    :cond_1b8
    const v1, -0x7fffff01

    if-ne v0, v1, :cond_1c0

    const-string v0, "INDEX_MASK_8"

    return-object v0

    .line 312
    :cond_1c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
