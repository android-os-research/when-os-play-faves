.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehWpsConfigMethods;
.super Ljava/lang/Object;
.source "SehWpsConfigMethods.java"


# static fields
.field public static final DISPLAY:S = 0x8s

.field public static final ETHERNET:S = 0x2s

.field public static final EXT_NFC_TOKEN:S = 0x10s

.field public static final INT_NFC_TOKEN:S = 0x20s

.field public static final KEYPAD:S = 0x100s

.field public static final LABEL:S = 0x4s

.field public static final NFC_INTERFACE:S = 0x40s

.field public static final P2PS:S = 0x1000s

.field public static final PHY_DISPLAY:S = 0x4008s

.field public static final PHY_PUSHBUTTON:S = 0x480s

.field public static final PUSHBUTTON:S = 0x80s

.field public static final USBA:S = 0x1s

.field public static final VIRT_DISPLAY:S = 0x2008s

.field public static final VIRT_PUSHBUTTON:S = 0x280s


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    const-string v1, "USBA"

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    const-string v2, "ETHERNET"

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    :cond_1f
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    const-string v2, "LABEL"

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    :cond_2c
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3a

    const-string v2, "DISPLAY"

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    :cond_3a
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    const-string v2, "EXT_NFC_TOKEN"

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    :cond_48
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_56

    const-string v2, "INT_NFC_TOKEN"

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    :cond_56
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_64

    const-string v2, "NFC_INTERFACE"

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    :cond_64
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_72

    const-string v2, "PUSHBUTTON"

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    :cond_72
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_80

    const-string v2, "KEYPAD"

    .line 101
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    :cond_80
    and-int/lit16 v2, p0, 0x280

    const/16 v3, 0x280

    if-ne v2, v3, :cond_8e

    const-string v2, "VIRT_PUSHBUTTON"

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x280

    int-to-short v1, v1

    :cond_8e
    and-int/lit16 v2, p0, 0x480

    const/16 v3, 0x480

    if-ne v2, v3, :cond_9c

    const-string v2, "PHY_PUSHBUTTON"

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x480

    int-to-short v1, v1

    :cond_9c
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_aa

    const-string v2, "P2PS"

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1000

    int-to-short v1, v1

    :cond_aa
    and-int/lit16 v2, p0, 0x2008

    const/16 v3, 0x2008

    if-ne v2, v3, :cond_b8

    const-string v2, "VIRT_DISPLAY"

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x2008

    int-to-short v1, v1

    :cond_b8
    and-int/lit16 v2, p0, 0x4008

    const/16 v3, 0x4008

    if-ne v2, v3, :cond_c6

    const-string v2, "PHY_DISPLAY"

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x4008

    int-to-short v1, v1

    :cond_c6
    if-eq p0, v1, :cond_e7

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    const-string p0, " | "

    .line 127
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "USBA"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "ETHERNET"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "LABEL"

    return-object p0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "DISPLAY"

    return-object p0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string p0, "EXT_NFC_TOKEN"

    return-object p0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string p0, "INT_NFC_TOKEN"

    return-object p0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string p0, "NFC_INTERFACE"

    return-object p0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string p0, "PUSHBUTTON"

    return-object p0

    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string p0, "KEYPAD"

    return-object p0

    :cond_3c
    const/16 v0, 0x280

    if-ne p0, v0, :cond_43

    const-string p0, "VIRT_PUSHBUTTON"

    return-object p0

    :cond_43
    const/16 v0, 0x480

    if-ne p0, v0, :cond_4a

    const-string p0, "PHY_PUSHBUTTON"

    return-object p0

    :cond_4a
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_51

    const-string p0, "P2PS"

    return-object p0

    :cond_51
    const/16 v0, 0x2008

    if-ne p0, v0, :cond_58

    const-string p0, "VIRT_DISPLAY"

    return-object p0

    :cond_58
    const/16 v0, 0x4008

    if-ne p0, v0, :cond_5f

    const-string p0, "PHY_DISPLAY"

    return-object p0

    .line 62
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
