.class public final Landroid/hardware/tv/cec/V1_0/CecLogicalAddress;
.super Ljava/lang/Object;
.source "CecLogicalAddress.java"


# static fields
.field public static final AUDIO_SYSTEM:I = 0x5

.field public static final BROADCAST:I = 0xf

.field public static final FREE_USE:I = 0xe

.field public static final PLAYBACK_1:I = 0x4

.field public static final PLAYBACK_2:I = 0x8

.field public static final PLAYBACK_3:I = 0xb

.field public static final RECORDER_1:I = 0x1

.field public static final RECORDER_2:I = 0x2

.field public static final RECORDER_3:I = 0x9

.field public static final TUNER_1:I = 0x3

.field public static final TUNER_2:I = 0x6

.field public static final TUNER_3:I = 0x7

.field public static final TUNER_4:I = 0xa

.field public static final TV:I = 0x0

.field public static final UNREGISTERED:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 6

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TV"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "RECORDER_1"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "RECORDER_2"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const-string v1, "TUNER_1"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    const-string v1, "PLAYBACK_1"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    const-string v1, "AUDIO_SYSTEM"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    const-string v1, "TUNER_2"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5e

    const-string v1, "TUNER_3"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_5e
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6b

    const-string v1, "PLAYBACK_2"

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_6b
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_78

    const-string v1, "RECORDER_3"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_78
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_85

    const-string v1, "TUNER_4"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_85
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_92

    const-string v1, "PLAYBACK_3"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_92
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_9f

    const-string v1, "FREE_USE"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_9f
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_ac

    const-string v4, "UNREGISTERED"

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_ac
    if-ne v1, v3, :cond_b5

    const-string v1, "BROADCAST"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_b5
    if-eq p0, v2, :cond_d1

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

    :cond_d1
    const-string p0, " | "

    .line 132
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "TV"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "RECORDER_1"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "RECORDER_2"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "TUNER_1"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "PLAYBACK_1"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "AUDIO_SYSTEM"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "TUNER_2"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "TUNER_3"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "PLAYBACK_2"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "RECORDER_3"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "TUNER_4"

    return-object p0

    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "PLAYBACK_3"

    return-object p0

    :cond_4b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_52

    const-string p0, "FREE_USE"

    return-object p0

    :cond_52
    const/16 v0, 0xf

    if-ne p0, v0, :cond_59

    const-string p0, "UNREGISTERED"

    return-object p0

    :cond_59
    if-ne p0, v0, :cond_5e

    const-string p0, "BROADCAST"

    return-object p0

    .line 66
    :cond_5e
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
