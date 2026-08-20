.class public final Landroid/hardware/audio/common/V2_0/AudioOutputFlag;
.super Ljava/lang/Object;
.source "AudioOutputFlag.java"


# static fields
.field public static final COMPRESS_OFFLOAD:I = 0x10

.field public static final DEEP_BUFFER:I = 0x8

.field public static final DIRECT:I = 0x1

.field public static final DIRECT_PCM:I = 0x2000

.field public static final FAST:I = 0x4

.field public static final HW_AV_SYNC:I = 0x40

.field public static final IEC958_NONAUDIO:I = 0x400

.field public static final MMAP_NOIRQ:I = 0x4000

.field public static final NONE:I = 0x0

.field public static final NON_BLOCKING:I = 0x20

.field public static final PRIMARY:I = 0x2

.field public static final RAW:I = 0x100

.field public static final SYNC:I = 0x200

.field public static final TTS:I = 0x80

.field public static final VOIP_RX:I = 0x8000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NONE"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "DIRECT"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "PRIMARY"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2e

    const-string v1, "FAST"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2e
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3b

    const-string v1, "DEEP_BUFFER"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_3b
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_48

    const-string v1, "COMPRESS_OFFLOAD"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_48
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_55

    const-string v1, "NON_BLOCKING"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_55
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_62

    const-string v1, "HW_AV_SYNC"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_62
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6f

    const-string v1, "TTS"

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_6f
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7c

    const-string v1, "RAW"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_7c
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_89

    const-string v1, "SYNC"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_89
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_96

    const-string v1, "IEC958_NONAUDIO"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_96
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_a3

    const-string v1, "DIRECT_PCM"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_a3
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_b0

    const-string v1, "MMAP_NOIRQ"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_b0
    const v1, 0x8000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_bd

    const-string v3, "VOIP_RX"

    .line 126
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_bd
    if-eq p0, v2, :cond_d9

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    const-string p0, " | "

    .line 132
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
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "DIRECT"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "PRIMARY"

    return-object p0

    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string p0, "FAST"

    return-object p0

    :cond_17
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    const-string p0, "DEEP_BUFFER"

    return-object p0

    :cond_1e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_25

    const-string p0, "COMPRESS_OFFLOAD"

    return-object p0

    :cond_25
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2c

    const-string p0, "NON_BLOCKING"

    return-object p0

    :cond_2c
    const/16 v0, 0x40

    if-ne p0, v0, :cond_33

    const-string p0, "HW_AV_SYNC"

    return-object p0

    :cond_33
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3a

    const-string p0, "TTS"

    return-object p0

    :cond_3a
    const/16 v0, 0x100

    if-ne p0, v0, :cond_41

    const-string p0, "RAW"

    return-object p0

    :cond_41
    const/16 v0, 0x200

    if-ne p0, v0, :cond_48

    const-string p0, "SYNC"

    return-object p0

    :cond_48
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4f

    const-string p0, "IEC958_NONAUDIO"

    return-object p0

    :cond_4f
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_56

    const-string p0, "DIRECT_PCM"

    return-object p0

    :cond_56
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_5d

    const-string p0, "MMAP_NOIRQ"

    return-object p0

    :cond_5d
    const v0, 0x8000

    if-ne p0, v0, :cond_65

    const-string p0, "VOIP_RX"

    return-object p0

    .line 66
    :cond_65
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
