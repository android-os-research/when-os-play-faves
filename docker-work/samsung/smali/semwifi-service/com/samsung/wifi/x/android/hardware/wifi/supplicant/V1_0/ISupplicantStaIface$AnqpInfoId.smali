.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$AnqpInfoId;
.super Ljava/lang/Object;
.source "ISupplicantStaIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnqpInfoId"
.end annotation


# static fields
.field public static final ANQP_3GPP_CELLULAR_NETWORK:S = 0x108s

.field public static final DOMAIN_NAME:S = 0x10cs

.field public static final IP_ADDR_TYPE_AVAILABILITY:S = 0x106s

.field public static final NAI_REALM:S = 0x107s

.field public static final ROAMING_CONSORTIUM:S = 0x105s

.field public static final VENUE_NAME:S = 0x102s


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .registers 5

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, p0, 0x102

    const/16 v2, 0x102

    if-ne v1, v2, :cond_12

    const-string v1, "VENUE_NAME"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    and-int/lit16 v2, p0, 0x105

    const/16 v3, 0x105

    if-ne v2, v3, :cond_21

    const-string v2, "ROAMING_CONSORTIUM"

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x105

    int-to-short v1, v1

    :cond_21
    and-int/lit16 v2, p0, 0x106

    const/16 v3, 0x106

    if-ne v2, v3, :cond_2f

    const-string v2, "IP_ADDR_TYPE_AVAILABILITY"

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x106

    int-to-short v1, v1

    :cond_2f
    and-int/lit16 v2, p0, 0x107

    const/16 v3, 0x107

    if-ne v2, v3, :cond_3d

    const-string v2, "NAI_REALM"

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x107

    int-to-short v1, v1

    :cond_3d
    and-int/lit16 v2, p0, 0x108

    const/16 v3, 0x108

    if-ne v2, v3, :cond_4b

    const-string v2, "ANQP_3GPP_CELLULAR_NETWORK"

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x108

    int-to-short v1, v1

    :cond_4b
    and-int/lit16 v2, p0, 0x10c

    const/16 v3, 0x10c

    if-ne v2, v3, :cond_59

    const-string v2, "DOMAIN_NAME"

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x10c

    int-to-short v1, v1

    :cond_59
    if-eq p0, v1, :cond_7a

    .line 152
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

    :cond_7a
    const-string p0, " | "

    .line 154
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x102

    if-ne p0, v0, :cond_7

    const-string p0, "VENUE_NAME"

    return-object p0

    :cond_7
    const/16 v0, 0x105

    if-ne p0, v0, :cond_e

    const-string p0, "ROAMING_CONSORTIUM"

    return-object p0

    :cond_e
    const/16 v0, 0x106

    if-ne p0, v0, :cond_15

    const-string p0, "IP_ADDR_TYPE_AVAILABILITY"

    return-object p0

    :cond_15
    const/16 v0, 0x107

    if-ne p0, v0, :cond_1c

    const-string p0, "NAI_REALM"

    return-object p0

    :cond_1c
    const/16 v0, 0x108

    if-ne p0, v0, :cond_23

    const-string p0, "ANQP_3GPP_CELLULAR_NETWORK"

    return-object p0

    :cond_23
    const/16 v0, 0x10c

    if-ne p0, v0, :cond_2a

    const-string p0, "DOMAIN_NAME"

    return-object p0

    .line 121
    :cond_2a
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
