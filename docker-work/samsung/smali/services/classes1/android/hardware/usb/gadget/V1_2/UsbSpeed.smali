.class public final Landroid/hardware/usb/gadget/V1_2/UsbSpeed;
.super Ljava/lang/Object;
.source "UsbSpeed.java"


# static fields
.field public static final FULLSPEED:I = 0x1

.field public static final HIGHSPEED:I = 0x2

.field public static final LOWSPEED:I = 0x0

.field public static final RESERVED_SPEED:I = 0x40

.field public static final SUPERSPEED:I = 0x3

.field public static final SUPERSPEED_10Gb:I = 0x4

.field public static final SUPERSPEED_20Gb:I = 0x5

.field public static final UNKNOWN:I = -0x1

.field public static final USB4_GEN2_10Gb:I = 0x6

.field public static final USB4_GEN2_20Gb:I = 0x7

.field public static final USB4_GEN3_20Gb:I = 0x8

.field public static final USB4_GEN3_40Gb:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const-string v1, "UNKNOWN"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v1, "LOWSPEED"

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    const-string v1, "FULLSPEED"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_22
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    const-string v1, "HIGHSPEED"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_2e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3a

    const-string v1, "SUPERSPEED"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_3a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_46

    const-string v1, "SUPERSPEED_10Gb"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_46
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_52

    const-string v1, "SUPERSPEED_20Gb"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_52
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5e

    const-string v1, "USB4_GEN2_10Gb"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_5e
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6a

    const-string v1, "USB4_GEN2_20Gb"

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_6a
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_77

    const-string v1, "USB4_GEN3_20Gb"

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_77
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_84

    const-string v1, "USB4_GEN3_40Gb"

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_84
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_91

    const-string v1, "RESERVED_SPEED"

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_91
    if-eq p0, v2, :cond_ad

    .line 146
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

    :cond_ad
    const-string p0, " | "

    .line 148
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    const-string p0, "LOWSPEED"

    return-object p0

    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const-string p0, "FULLSPEED"

    return-object p0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    const-string p0, "HIGHSPEED"

    return-object p0

    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    const-string p0, "SUPERSPEED"

    return-object p0

    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    const-string p0, "SUPERSPEED_10Gb"

    return-object p0

    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    const-string p0, "SUPERSPEED_20Gb"

    return-object p0

    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    const-string p0, "USB4_GEN2_10Gb"

    return-object p0

    :cond_2f
    const/4 v0, 0x7

    if-ne p0, v0, :cond_35

    const-string p0, "USB4_GEN2_20Gb"

    return-object p0

    :cond_35
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3c

    const-string p0, "USB4_GEN3_20Gb"

    return-object p0

    :cond_3c
    const/16 v0, 0x9

    if-ne p0, v0, :cond_43

    const-string p0, "USB4_GEN3_40Gb"

    return-object p0

    :cond_43
    const/16 v0, 0x40

    if-ne p0, v0, :cond_4a

    const-string p0, "RESERVED_SPEED"

    return-object p0

    .line 94
    :cond_4a
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
