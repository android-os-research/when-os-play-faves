.class public final Landroid/hardware/usb/gadget/V1_0/GadgetFunction;
.super Ljava/lang/Object;
.source "GadgetFunction.java"


# static fields
.field public static final ACCESSORY:J = 0x2L

.field public static final ADB:J = 0x1L

.field public static final AUDIO_SOURCE:J = 0x40L

.field public static final MIDI:J = 0x8L

.field public static final MTP:J = 0x4L

.field public static final NONE:J = 0x0L

.field public static final PTP:J = 0x10L

.field public static final RNDIS:J = 0x20L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(J)Ljava/lang/String;
    .registers 9

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NONE"

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    cmp-long v3, v3, v1

    if-nez v3, :cond_18

    const-string v3, "ADB"

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_18
    const-wide/16 v1, 0x0

    :goto_1a
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_28

    const-string v5, "ACCESSORY"

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_28
    const-wide/16 v3, 0x4

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_36

    const-string v5, "MTP"

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_36
    const-wide/16 v3, 0x8

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_44

    const-string v5, "MIDI"

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_44
    const-wide/16 v3, 0x10

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_52

    const-string v5, "PTP"

    .line 86
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_52
    const-wide/16 v3, 0x20

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_60

    const-string v5, "RNDIS"

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_60
    const-wide/16 v3, 0x40

    and-long v5, p0, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_6e

    const-string v5, "AUDIO_SOURCE"

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v1, v3

    :cond_6e
    cmp-long v3, p0, v1

    if-eqz v3, :cond_8c

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-long v1, v1

    and-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    const-string p0, " | "

    .line 100
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-string p0, "NONE"

    return-object p0

    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    const-string p0, "ADB"

    return-object p0

    :cond_12
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    const-string p0, "ACCESSORY"

    return-object p0

    :cond_1b
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_24

    const-string p0, "MTP"

    return-object p0

    :cond_24
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_2d

    const-string p0, "MIDI"

    return-object p0

    :cond_2d
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_36

    const-string p0, "PTP"

    return-object p0

    :cond_36
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_3f

    const-string p0, "RNDIS"

    return-object p0

    :cond_3f
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_48

    const-string p0, "AUDIO_SOURCE"

    return-object p0

    .line 62
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
