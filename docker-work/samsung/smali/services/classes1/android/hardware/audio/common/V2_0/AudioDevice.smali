.class public final Landroid/hardware/audio/common/V2_0/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# static fields
.field public static final BIT_DEFAULT:I = 0x40000000

.field public static final BIT_IN:I = -0x80000000

.field public static final IN_ALL:I = -0x3ce00001

.field public static final IN_ALL_SCO:I = -0x7ffffff8

.field public static final IN_ALL_USB:I = -0x7dffe800

.field public static final IN_AMBIENT:I = -0x7ffffffe

.field public static final IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final IN_BACK_MIC:I = -0x7fffff80

.field public static final IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final IN_BUS:I = -0x7ff00000

.field public static final IN_COMMUNICATION:I = -0x7fffffff

.field public static final IN_DEFAULT:I = -0x40000000

.field public static final IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final IN_FM_TUNER:I = -0x7fffe000

.field public static final IN_HDMI:I = -0x7fffffe0

.field public static final IN_IP:I = -0x7ff80000

.field public static final IN_LINE:I = -0x7fff8000

.field public static final IN_LOOPBACK:I = -0x7ffc0000

.field public static final IN_PROXY:I = -0x7f000000

.field public static final IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final IN_SPDIF:I = -0x7fff0000

.field public static final IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final IN_TV_TUNER:I = -0x7fffc000

.field public static final IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final IN_USB_DEVICE:I = -0x7ffff000

.field public static final IN_USB_HEADSET:I = -0x7e000000

.field public static final IN_VOICE_CALL:I = -0x7fffffc0

.field public static final IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final NONE:I = 0x0

.field public static final OUT_ALL:I = 0x47ffffff

.field public static final OUT_ALL_A2DP:I = 0x380

.field public static final OUT_ALL_SCO:I = 0x70

.field public static final OUT_ALL_USB:I = 0x4006000

.field public static final OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final OUT_AUX_DIGITAL:I = 0x400

.field public static final OUT_AUX_LINE:I = 0x200000

.field public static final OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final OUT_BLUETOOTH_SCO:I = 0x10

.field public static final OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final OUT_BUS:I = 0x1000000

.field public static final OUT_DEFAULT:I = 0x40000000

.field public static final OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final OUT_EARPIECE:I = 0x1

.field public static final OUT_FM:I = 0x100000

.field public static final OUT_HDMI:I = 0x400

.field public static final OUT_HDMI_ARC:I = 0x40000

.field public static final OUT_IP:I = 0x800000

.field public static final OUT_LINE:I = 0x20000

.field public static final OUT_PROXY:I = 0x2000000

.field public static final OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final OUT_SPDIF:I = 0x80000

.field public static final OUT_SPEAKER:I = 0x2

.field public static final OUT_SPEAKER_SAFE:I = 0x400000

.field public static final OUT_TELEPHONY_TX:I = 0x10000

.field public static final OUT_USB_ACCESSORY:I = 0x2000

.field public static final OUT_USB_DEVICE:I = 0x4000

.field public static final OUT_USB_HEADSET:I = 0x4000000

.field public static final OUT_WIRED_HEADPHONE:I = 0x8

.field public static final OUT_WIRED_HEADSET:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 8

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NONE"

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_16

    const-string v2, "BIT_IN"

    .line 334
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const/high16 v2, 0x40000000    # 2.0f

    and-int v3, p0, v2

    if-ne v3, v2, :cond_23

    const-string v4, "BIT_DEFAULT"

    .line 338
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_23
    and-int/lit8 v4, p0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    const-string v4, "OUT_EARPIECE"

    .line 342
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_2f
    and-int/lit8 v4, p0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    const-string v4, "OUT_SPEAKER"

    .line 346
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_3b
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_47

    const-string v4, "OUT_WIRED_HEADSET"

    .line 350
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_47
    and-int/lit8 v4, p0, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_54

    const-string v4, "OUT_WIRED_HEADPHONE"

    .line 354
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_54
    and-int/lit8 v4, p0, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_61

    const-string v4, "OUT_BLUETOOTH_SCO"

    .line 358
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_61
    and-int/lit8 v4, p0, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6e

    const-string v4, "OUT_BLUETOOTH_SCO_HEADSET"

    .line 362
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_6e
    and-int/lit8 v4, p0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7b

    const-string v4, "OUT_BLUETOOTH_SCO_CARKIT"

    .line 366
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_7b
    and-int/lit16 v4, p0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_88

    const-string v4, "OUT_BLUETOOTH_A2DP"

    .line 370
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_88
    and-int/lit16 v4, p0, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_95

    const-string v4, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 374
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    :cond_95
    and-int/lit16 v4, p0, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_a2

    const-string v4, "OUT_BLUETOOTH_A2DP_SPEAKER"

    .line 378
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_a2
    and-int/lit16 v4, p0, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_af

    const-string v6, "OUT_AUX_DIGITAL"

    .line 382
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_af
    if-ne v4, v5, :cond_b8

    const-string v4, "OUT_HDMI"

    .line 386
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_b8
    and-int/lit16 v4, p0, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_c5

    const-string v4, "OUT_ANLG_DOCK_HEADSET"

    .line 390
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x800

    :cond_c5
    and-int/lit16 v4, p0, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_d2

    const-string v4, "OUT_DGTL_DOCK_HEADSET"

    .line 394
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1000

    :cond_d2
    and-int/lit16 v4, p0, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_df

    const-string v4, "OUT_USB_ACCESSORY"

    .line 398
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x2000

    :cond_df
    and-int/lit16 v4, p0, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_ec

    const-string v4, "OUT_USB_DEVICE"

    .line 402
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x4000

    :cond_ec
    const v4, 0x8000

    and-int v5, p0, v4

    if-ne v5, v4, :cond_f9

    const-string v5, "OUT_REMOTE_SUBMIX"

    .line 406
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_f9
    const/high16 v4, 0x10000

    and-int v5, p0, v4

    if-ne v5, v4, :cond_105

    const-string v5, "OUT_TELEPHONY_TX"

    .line 410
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_105
    const/high16 v4, 0x20000

    and-int/2addr v4, p0

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_114

    const-string v4, "OUT_LINE"

    .line 414
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    :cond_114
    const/high16 v4, 0x40000

    and-int/2addr v4, p0

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_123

    const-string v4, "OUT_HDMI_ARC"

    .line 418
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x40000

    or-int/2addr v1, v4

    :cond_123
    const/high16 v4, 0x80000

    and-int/2addr v4, p0

    const/high16 v5, 0x80000

    if-ne v4, v5, :cond_132

    const-string v4, "OUT_SPDIF"

    .line 422
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    :cond_132
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    const/high16 v5, 0x100000

    if-ne v4, v5, :cond_141

    const-string v4, "OUT_FM"

    .line 426
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x100000

    or-int/2addr v1, v4

    :cond_141
    const/high16 v4, 0x200000

    and-int/2addr v4, p0

    const/high16 v5, 0x200000

    if-ne v4, v5, :cond_150

    const-string v4, "OUT_AUX_LINE"

    .line 430
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x200000

    or-int/2addr v1, v4

    :cond_150
    const/high16 v4, 0x400000

    and-int/2addr v4, p0

    const/high16 v5, 0x400000

    if-ne v4, v5, :cond_15f

    const-string v4, "OUT_SPEAKER_SAFE"

    .line 434
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x400000

    or-int/2addr v1, v4

    :cond_15f
    const/high16 v4, 0x800000

    and-int/2addr v4, p0

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_16e

    const-string v4, "OUT_IP"

    .line 438
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x800000

    or-int/2addr v1, v4

    :cond_16e
    const/high16 v4, 0x1000000

    and-int/2addr v4, p0

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_17d

    const-string v4, "OUT_BUS"

    .line 442
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x1000000

    or-int/2addr v1, v4

    :cond_17d
    const/high16 v4, 0x2000000

    and-int/2addr v4, p0

    const/high16 v5, 0x2000000

    if-ne v4, v5, :cond_18c

    const-string v4, "OUT_PROXY"

    .line 446
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x2000000

    or-int/2addr v1, v4

    :cond_18c
    const/high16 v4, 0x4000000

    and-int/2addr v4, p0

    const/high16 v5, 0x4000000

    if-ne v4, v5, :cond_19b

    const-string v4, "OUT_USB_HEADSET"

    .line 450
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x4000000

    or-int/2addr v1, v4

    :cond_19b
    if-ne v3, v2, :cond_1a3

    const-string v3, "OUT_DEFAULT"

    .line 454
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1a3
    const v2, 0x47ffffff

    and-int/2addr v2, p0

    const v3, 0x47ffffff

    if-ne v2, v3, :cond_1b5

    const-string v2, "OUT_ALL"

    .line 458
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x47ffffff

    or-int/2addr v1, v2

    :cond_1b5
    and-int/lit16 v2, p0, 0x380

    const/16 v3, 0x380

    if-ne v2, v3, :cond_1c2

    const-string v2, "OUT_ALL_A2DP"

    .line 462
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x380

    :cond_1c2
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1cf

    const-string v2, "OUT_ALL_SCO"

    .line 466
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x70

    :cond_1cf
    const v2, 0x4006000

    and-int/2addr v2, p0

    const v3, 0x4006000

    if-ne v2, v3, :cond_1e1

    const-string v2, "OUT_ALL_USB"

    .line 470
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4006000

    or-int/2addr v1, v2

    :cond_1e1
    const v2, -0x7fffffff

    and-int/2addr v2, p0

    const v3, -0x7fffffff

    if-ne v2, v3, :cond_1f3

    const-string v2, "IN_COMMUNICATION"

    .line 474
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffff

    or-int/2addr v1, v2

    :cond_1f3
    const v2, -0x7ffffffe

    and-int/2addr v2, p0

    const v3, -0x7ffffffe

    if-ne v2, v3, :cond_205

    const-string v2, "IN_AMBIENT"

    .line 478
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffffe

    or-int/2addr v1, v2

    :cond_205
    const v2, -0x7ffffffc

    and-int/2addr v2, p0

    const v3, -0x7ffffffc

    if-ne v2, v3, :cond_217

    const-string v2, "IN_BUILTIN_MIC"

    .line 482
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffffc

    or-int/2addr v1, v2

    :cond_217
    const v2, -0x7ffffff8

    and-int v3, p0, v2

    if-ne v3, v2, :cond_224

    const-string v4, "IN_BLUETOOTH_SCO_HEADSET"

    .line 486
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_224
    const v4, -0x7ffffff0

    and-int/2addr v4, p0

    const v5, -0x7ffffff0

    if-ne v4, v5, :cond_236

    const-string v4, "IN_WIRED_HEADSET"

    .line 490
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7ffffff0

    or-int/2addr v1, v4

    :cond_236
    const v4, -0x7fffffe0

    and-int v5, p0, v4

    if-ne v5, v4, :cond_243

    const-string v6, "IN_AUX_DIGITAL"

    .line 494
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_243
    if-ne v5, v4, :cond_24b

    const-string v5, "IN_HDMI"

    .line 498
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_24b
    const v4, -0x7fffffc0

    and-int v5, p0, v4

    if-ne v5, v4, :cond_258

    const-string v6, "IN_VOICE_CALL"

    .line 502
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_258
    if-ne v5, v4, :cond_260

    const-string v5, "IN_TELEPHONY_RX"

    .line 506
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v4

    :cond_260
    const v4, -0x7fffff80

    and-int/2addr v4, p0

    const v5, -0x7fffff80

    if-ne v4, v5, :cond_272

    const-string v4, "IN_BACK_MIC"

    .line 510
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffff80

    or-int/2addr v1, v4

    :cond_272
    const v4, -0x7fffff00

    and-int/2addr v4, p0

    const v5, -0x7fffff00

    if-ne v4, v5, :cond_284

    const-string v4, "IN_REMOTE_SUBMIX"

    .line 514
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffff00

    or-int/2addr v1, v4

    :cond_284
    const v4, -0x7ffffe00

    and-int/2addr v4, p0

    const v5, -0x7ffffe00

    if-ne v4, v5, :cond_296

    const-string v4, "IN_ANLG_DOCK_HEADSET"

    .line 518
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7ffffe00

    or-int/2addr v1, v4

    :cond_296
    const v4, -0x7ffffc00

    and-int/2addr v4, p0

    const v5, -0x7ffffc00

    if-ne v4, v5, :cond_2a8

    const-string v4, "IN_DGTL_DOCK_HEADSET"

    .line 522
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7ffffc00

    or-int/2addr v1, v4

    :cond_2a8
    const v4, -0x7ffff800

    and-int/2addr v4, p0

    const v5, -0x7ffff800

    if-ne v4, v5, :cond_2ba

    const-string v4, "IN_USB_ACCESSORY"

    .line 526
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7ffff800

    or-int/2addr v1, v4

    :cond_2ba
    const v4, -0x7ffff000

    and-int/2addr v4, p0

    const v5, -0x7ffff000

    if-ne v4, v5, :cond_2cc

    const-string v4, "IN_USB_DEVICE"

    .line 530
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7ffff000

    or-int/2addr v1, v4

    :cond_2cc
    const v4, -0x7fffe000

    and-int/2addr v4, p0

    const v5, -0x7fffe000

    if-ne v4, v5, :cond_2de

    const-string v4, "IN_FM_TUNER"

    .line 534
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffe000

    or-int/2addr v1, v4

    :cond_2de
    const v4, -0x7fffc000

    and-int/2addr v4, p0

    const v5, -0x7fffc000

    if-ne v4, v5, :cond_2f0

    const-string v4, "IN_TV_TUNER"

    .line 538
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffc000

    or-int/2addr v1, v4

    :cond_2f0
    const v4, -0x7fff8000

    and-int/2addr v4, p0

    const v5, -0x7fff8000

    if-ne v4, v5, :cond_302

    const-string v4, "IN_LINE"

    .line 542
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x7fff8000

    or-int/2addr v1, v4

    :cond_302
    const/high16 v4, -0x7fff0000

    and-int/2addr v4, p0

    const/high16 v5, -0x7fff0000

    if-ne v4, v5, :cond_311

    const-string v4, "IN_SPDIF"

    .line 546
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7fff0000

    or-int/2addr v1, v4

    :cond_311
    const/high16 v4, -0x7ffe0000

    and-int/2addr v4, p0

    const/high16 v5, -0x7ffe0000

    if-ne v4, v5, :cond_320

    const-string v4, "IN_BLUETOOTH_A2DP"

    .line 550
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ffe0000

    or-int/2addr v1, v4

    :cond_320
    const/high16 v4, -0x7ffc0000

    and-int/2addr v4, p0

    const/high16 v5, -0x7ffc0000

    if-ne v4, v5, :cond_32f

    const-string v4, "IN_LOOPBACK"

    .line 554
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ffc0000

    or-int/2addr v1, v4

    :cond_32f
    const/high16 v4, -0x7ff80000

    and-int/2addr v4, p0

    const/high16 v5, -0x7ff80000

    if-ne v4, v5, :cond_33e

    const-string v4, "IN_IP"

    .line 558
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ff80000

    or-int/2addr v1, v4

    :cond_33e
    const/high16 v4, -0x7ff00000

    and-int/2addr v4, p0

    const/high16 v5, -0x7ff00000

    if-ne v4, v5, :cond_34d

    const-string v4, "IN_BUS"

    .line 562
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ff00000

    or-int/2addr v1, v4

    :cond_34d
    const/high16 v4, -0x7f000000

    and-int/2addr v4, p0

    const/high16 v5, -0x7f000000

    if-ne v4, v5, :cond_35c

    const-string v4, "IN_PROXY"

    .line 566
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7f000000

    or-int/2addr v1, v4

    :cond_35c
    const/high16 v4, -0x7e000000

    and-int/2addr v4, p0

    const/high16 v5, -0x7e000000

    if-ne v4, v5, :cond_36b

    const-string v4, "IN_USB_HEADSET"

    .line 570
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7e000000

    or-int/2addr v1, v4

    :cond_36b
    const/high16 v4, -0x40000000    # -2.0f

    and-int/2addr v4, p0

    const/high16 v5, -0x40000000    # -2.0f

    if-ne v4, v5, :cond_37a

    const-string v4, "IN_DEFAULT"

    .line 574
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x40000000    # -2.0f

    or-int/2addr v1, v4

    :cond_37a
    const v4, -0x3ce00001    # -159.99998f

    and-int/2addr v4, p0

    const v5, -0x3ce00001    # -159.99998f

    if-ne v4, v5, :cond_38c

    const-string v4, "IN_ALL"

    .line 578
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, -0x3ce00001    # -159.99998f

    or-int/2addr v1, v4

    :cond_38c
    if-ne v3, v2, :cond_394

    const-string v3, "IN_ALL_SCO"

    .line 582
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_394
    const v2, -0x7dffe800

    and-int/2addr v2, p0

    const v3, -0x7dffe800

    if-ne v2, v3, :cond_3a6

    const-string v2, "IN_ALL_USB"

    .line 586
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7dffe800

    or-int/2addr v1, v2

    :cond_3a6
    if-eq p0, v1, :cond_3c2

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c2
    const-string p0, " | "

    .line 592
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "NONE"

    return-object p0

    :cond_5
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    const-string p0, "BIT_IN"

    return-object p0

    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_13

    const-string p0, "BIT_DEFAULT"

    return-object p0

    :cond_13
    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    const-string p0, "OUT_EARPIECE"

    return-object p0

    :cond_19
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    const-string p0, "OUT_SPEAKER"

    return-object p0

    :cond_1f
    const/4 v1, 0x4

    if-ne p0, v1, :cond_25

    const-string p0, "OUT_WIRED_HEADSET"

    return-object p0

    :cond_25
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2c

    const-string p0, "OUT_WIRED_HEADPHONE"

    return-object p0

    :cond_2c
    const/16 v1, 0x10

    if-ne p0, v1, :cond_33

    const-string p0, "OUT_BLUETOOTH_SCO"

    return-object p0

    :cond_33
    const/16 v1, 0x20

    if-ne p0, v1, :cond_3a

    const-string p0, "OUT_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_3a
    const/16 v1, 0x40

    if-ne p0, v1, :cond_41

    const-string p0, "OUT_BLUETOOTH_SCO_CARKIT"

    return-object p0

    :cond_41
    const/16 v1, 0x80

    if-ne p0, v1, :cond_48

    const-string p0, "OUT_BLUETOOTH_A2DP"

    return-object p0

    :cond_48
    const/16 v1, 0x100

    if-ne p0, v1, :cond_4f

    const-string p0, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    return-object p0

    :cond_4f
    const/16 v1, 0x200

    if-ne p0, v1, :cond_56

    const-string p0, "OUT_BLUETOOTH_A2DP_SPEAKER"

    return-object p0

    :cond_56
    const/16 v1, 0x400

    if-ne p0, v1, :cond_5d

    const-string p0, "OUT_AUX_DIGITAL"

    return-object p0

    :cond_5d
    if-ne p0, v1, :cond_62

    const-string p0, "OUT_HDMI"

    return-object p0

    :cond_62
    const/16 v1, 0x800

    if-ne p0, v1, :cond_69

    const-string p0, "OUT_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_69
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_70

    const-string p0, "OUT_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_70
    const/16 v1, 0x2000

    if-ne p0, v1, :cond_77

    const-string p0, "OUT_USB_ACCESSORY"

    return-object p0

    :cond_77
    const/16 v1, 0x4000

    if-ne p0, v1, :cond_7e

    const-string p0, "OUT_USB_DEVICE"

    return-object p0

    :cond_7e
    const v1, 0x8000

    if-ne p0, v1, :cond_86

    const-string p0, "OUT_REMOTE_SUBMIX"

    return-object p0

    :cond_86
    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_8d

    const-string p0, "OUT_TELEPHONY_TX"

    return-object p0

    :cond_8d
    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_94

    const-string p0, "OUT_LINE"

    return-object p0

    :cond_94
    const/high16 v1, 0x40000

    if-ne p0, v1, :cond_9b

    const-string p0, "OUT_HDMI_ARC"

    return-object p0

    :cond_9b
    const/high16 v1, 0x80000

    if-ne p0, v1, :cond_a2

    const-string p0, "OUT_SPDIF"

    return-object p0

    :cond_a2
    const/high16 v1, 0x100000

    if-ne p0, v1, :cond_a9

    const-string p0, "OUT_FM"

    return-object p0

    :cond_a9
    const/high16 v1, 0x200000

    if-ne p0, v1, :cond_b0

    const-string p0, "OUT_AUX_LINE"

    return-object p0

    :cond_b0
    const/high16 v1, 0x400000

    if-ne p0, v1, :cond_b7

    const-string p0, "OUT_SPEAKER_SAFE"

    return-object p0

    :cond_b7
    const/high16 v1, 0x800000

    if-ne p0, v1, :cond_be

    const-string p0, "OUT_IP"

    return-object p0

    :cond_be
    const/high16 v1, 0x1000000

    if-ne p0, v1, :cond_c5

    const-string p0, "OUT_BUS"

    return-object p0

    :cond_c5
    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_cc

    const-string p0, "OUT_PROXY"

    return-object p0

    :cond_cc
    const/high16 v1, 0x4000000

    if-ne p0, v1, :cond_d3

    const-string p0, "OUT_USB_HEADSET"

    return-object p0

    :cond_d3
    if-ne p0, v0, :cond_d8

    const-string p0, "OUT_DEFAULT"

    return-object p0

    :cond_d8
    const v0, 0x47ffffff

    if-ne p0, v0, :cond_e0

    const-string p0, "OUT_ALL"

    return-object p0

    :cond_e0
    const/16 v0, 0x380

    if-ne p0, v0, :cond_e7

    const-string p0, "OUT_ALL_A2DP"

    return-object p0

    :cond_e7
    const/16 v0, 0x70

    if-ne p0, v0, :cond_ee

    const-string p0, "OUT_ALL_SCO"

    return-object p0

    :cond_ee
    const v0, 0x4006000

    if-ne p0, v0, :cond_f6

    const-string p0, "OUT_ALL_USB"

    return-object p0

    :cond_f6
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_fe

    const-string p0, "IN_COMMUNICATION"

    return-object p0

    :cond_fe
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_106

    const-string p0, "IN_AMBIENT"

    return-object p0

    :cond_106
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_10e

    const-string p0, "IN_BUILTIN_MIC"

    return-object p0

    :cond_10e
    const v0, -0x7ffffff8

    if-ne p0, v0, :cond_116

    const-string p0, "IN_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_116
    const v1, -0x7ffffff0

    if-ne p0, v1, :cond_11e

    const-string p0, "IN_WIRED_HEADSET"

    return-object p0

    :cond_11e
    const v1, -0x7fffffe0

    if-ne p0, v1, :cond_126

    const-string p0, "IN_AUX_DIGITAL"

    return-object p0

    :cond_126
    if-ne p0, v1, :cond_12b

    const-string p0, "IN_HDMI"

    return-object p0

    :cond_12b
    const v1, -0x7fffffc0

    if-ne p0, v1, :cond_133

    const-string p0, "IN_VOICE_CALL"

    return-object p0

    :cond_133
    if-ne p0, v1, :cond_138

    const-string p0, "IN_TELEPHONY_RX"

    return-object p0

    :cond_138
    const v1, -0x7fffff80

    if-ne p0, v1, :cond_140

    const-string p0, "IN_BACK_MIC"

    return-object p0

    :cond_140
    const v1, -0x7fffff00

    if-ne p0, v1, :cond_148

    const-string p0, "IN_REMOTE_SUBMIX"

    return-object p0

    :cond_148
    const v1, -0x7ffffe00

    if-ne p0, v1, :cond_150

    const-string p0, "IN_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_150
    const v1, -0x7ffffc00

    if-ne p0, v1, :cond_158

    const-string p0, "IN_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_158
    const v1, -0x7ffff800

    if-ne p0, v1, :cond_160

    const-string p0, "IN_USB_ACCESSORY"

    return-object p0

    :cond_160
    const v1, -0x7ffff000

    if-ne p0, v1, :cond_168

    const-string p0, "IN_USB_DEVICE"

    return-object p0

    :cond_168
    const v1, -0x7fffe000

    if-ne p0, v1, :cond_170

    const-string p0, "IN_FM_TUNER"

    return-object p0

    :cond_170
    const v1, -0x7fffc000

    if-ne p0, v1, :cond_178

    const-string p0, "IN_TV_TUNER"

    return-object p0

    :cond_178
    const v1, -0x7fff8000

    if-ne p0, v1, :cond_180

    const-string p0, "IN_LINE"

    return-object p0

    :cond_180
    const/high16 v1, -0x7fff0000

    if-ne p0, v1, :cond_187

    const-string p0, "IN_SPDIF"

    return-object p0

    :cond_187
    const/high16 v1, -0x7ffe0000

    if-ne p0, v1, :cond_18e

    const-string p0, "IN_BLUETOOTH_A2DP"

    return-object p0

    :cond_18e
    const/high16 v1, -0x7ffc0000

    if-ne p0, v1, :cond_195

    const-string p0, "IN_LOOPBACK"

    return-object p0

    :cond_195
    const/high16 v1, -0x7ff80000

    if-ne p0, v1, :cond_19c

    const-string p0, "IN_IP"

    return-object p0

    :cond_19c
    const/high16 v1, -0x7ff00000

    if-ne p0, v1, :cond_1a3

    const-string p0, "IN_BUS"

    return-object p0

    :cond_1a3
    const/high16 v1, -0x7f000000

    if-ne p0, v1, :cond_1aa

    const-string p0, "IN_PROXY"

    return-object p0

    :cond_1aa
    const/high16 v1, -0x7e000000

    if-ne p0, v1, :cond_1b1

    const-string p0, "IN_USB_HEADSET"

    return-object p0

    :cond_1b1
    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_1b8

    const-string p0, "IN_DEFAULT"

    return-object p0

    :cond_1b8
    const v1, -0x3ce00001    # -159.99998f

    if-ne p0, v1, :cond_1c0

    const-string p0, "IN_ALL"

    return-object p0

    :cond_1c0
    if-ne p0, v0, :cond_1c5

    const-string p0, "IN_ALL_SCO"

    return-object p0

    :cond_1c5
    const v0, -0x7dffe800

    if-ne p0, v0, :cond_1cd

    const-string p0, "IN_ALL_USB"

    return-object p0

    .line 326
    :cond_1cd
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
