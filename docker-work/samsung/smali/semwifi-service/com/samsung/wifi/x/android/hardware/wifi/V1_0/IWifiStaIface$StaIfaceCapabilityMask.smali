.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$StaIfaceCapabilityMask;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaIfaceCapabilityMask"
.end annotation


# static fields
.field public static final APF:I = 0x1

.field public static final BACKGROUND_SCAN:I = 0x2

.field public static final CONTROL_ROAMING:I = 0x10

.field public static final DEBUG_PACKET_FATE:I = 0x4000

.field public static final HOTSPOT:I = 0x100

.field public static final KEEP_ALIVE:I = 0x2000

.field public static final LINK_LAYER_STATS:I = 0x4

.field public static final ND_OFFLOAD:I = 0x1000

.field public static final PNO:I = 0x200

.field public static final PROBE_IE_WHITELIST:I = 0x20

.field public static final RSSI_MONITOR:I = 0x8

.field public static final SCAN_RAND:I = 0x40

.field public static final STA_5G:I = 0x80

.field public static final TDLS:I = 0x400

.field public static final TDLS_OFFCHANNEL:I = 0x800


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "APF"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "BACKGROUND_SCAN"

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_29

    const-string v1, "LINK_LAYER_STATS"

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_29
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_36

    const-string v1, "RSSI_MONITOR"

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_36
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_43

    const-string v1, "CONTROL_ROAMING"

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_43
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_50

    const-string v1, "PROBE_IE_WHITELIST"

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_50
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5d

    const-string v1, "SCAN_RAND"

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_5d
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6a

    const-string v1, "STA_5G"

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_6a
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_77

    const-string v1, "HOTSPOT"

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_77
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_84

    const-string v1, "PNO"

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_84
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_91

    const-string v1, "TDLS"

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_91
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_9e

    const-string v1, "TDLS_OFFCHANNEL"

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_9e
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_ab

    const-string v1, "ND_OFFLOAD"

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_ab
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_b8

    const-string v1, "KEEP_ALIVE"

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_b8
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_c5

    const-string v1, "DEBUG_PACKET_FATE"

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_c5
    if-eq p0, v2, :cond_e1

    .line 272
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

    :cond_e1
    const-string p0, " | "

    .line 274
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "APF"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "BACKGROUND_SCAN"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "LINK_LAYER_STATS"

    return-object p0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "RSSI_MONITOR"

    return-object p0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string p0, "CONTROL_ROAMING"

    return-object p0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string p0, "PROBE_IE_WHITELIST"

    return-object p0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string p0, "SCAN_RAND"

    return-object p0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string p0, "STA_5G"

    return-object p0

    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string p0, "HOTSPOT"

    return-object p0

    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    const-string p0, "PNO"

    return-object p0

    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    const-string p0, "TDLS"

    return-object p0

    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    const-string p0, "TDLS_OFFCHANNEL"

    return-object p0

    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    const-string p0, "ND_OFFLOAD"

    return-object p0

    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    const-string p0, "KEEP_ALIVE"

    return-object p0

    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    const-string p0, "DEBUG_PACKET_FATE"

    return-object p0

    .line 205
    :cond_66
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
