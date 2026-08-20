.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$WpsConfigError;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsConfigError"
.end annotation


# static fields
.field public static final CHAN_24_NOT_SUPPORTED:S = 0x3s

.field public static final CHAN_50_NOT_SUPPORTED:S = 0x4s

.field public static final CHAN_60G_NOT_SUPPORTED:S = 0x13s

.field public static final DECRYPTION_CRC_FAILURE:S = 0x2s

.field public static final DEVICE_BUSY:S = 0xes

.field public static final DEV_PASSWORD_AUTH_FAILURE:S = 0x12s

.field public static final FAILED_DHCP_CONFIG:S = 0x9s

.field public static final IP_ADDR_CONFLICT:S = 0xas

.field public static final MSG_TIMEOUT:S = 0x10s

.field public static final MULTIPLE_PBC_DETECTED:S = 0xcs

.field public static final NETWORK_ASSOC_FAILURE:S = 0x7s

.field public static final NETWORK_AUTH_FAILURE:S = 0x6s

.field public static final NO_CONN_TO_REGISTRAR:S = 0xbs

.field public static final NO_DHCP_RESPONSE:S = 0x8s

.field public static final NO_ERROR:S = 0x0s

.field public static final OOB_IFACE_READ_ERROR:S = 0x1s

.field public static final PUBLIC_KEY_HASH_MISMATCH:S = 0x14s

.field public static final REG_SESS_TIMEOUT:S = 0x11s

.field public static final ROGUE_SUSPECTED:S = 0xds

.field public static final SETUP_LOCKED:S = 0xfs

.field public static final SIGNAL_TOO_WEAK:S = 0x5s


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(S)Ljava/lang/String;
    .registers 5

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NO_ERROR"

    .line 869
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const-string v1, "OOB_IFACE_READ_ERROR"

    .line 871
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    const-string v2, "DECRYPTION_CRC_FAILURE"

    .line 875
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    :cond_24
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    const-string v2, "CHAN_24_NOT_SUPPORTED"

    .line 879
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    :cond_31
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3e

    const-string v2, "CHAN_50_NOT_SUPPORTED"

    .line 883
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    :cond_3e
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4b

    const-string v2, "SIGNAL_TOO_WEAK"

    .line 887
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    int-to-short v1, v1

    :cond_4b
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_58

    const-string v2, "NETWORK_AUTH_FAILURE"

    .line 891
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    int-to-short v1, v1

    :cond_58
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_65

    const-string v2, "NETWORK_ASSOC_FAILURE"

    .line 895
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    int-to-short v1, v1

    :cond_65
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_73

    const-string v2, "NO_DHCP_RESPONSE"

    .line 899
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    :cond_73
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_81

    const-string v2, "FAILED_DHCP_CONFIG"

    .line 903
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    :cond_81
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8f

    const-string v2, "IP_ADDR_CONFLICT"

    .line 907
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    int-to-short v1, v1

    :cond_8f
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9d

    const-string v2, "NO_CONN_TO_REGISTRAR"

    .line 911
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    int-to-short v1, v1

    :cond_9d
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_ab

    const-string v2, "MULTIPLE_PBC_DETECTED"

    .line 915
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xc

    int-to-short v1, v1

    :cond_ab
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_b9

    const-string v2, "ROGUE_SUSPECTED"

    .line 919
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    int-to-short v1, v1

    :cond_b9
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_c7

    const-string v2, "DEVICE_BUSY"

    .line 923
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xe

    int-to-short v1, v1

    :cond_c7
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_d5

    const-string v2, "SETUP_LOCKED"

    .line 927
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    int-to-short v1, v1

    :cond_d5
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e3

    const-string v2, "MSG_TIMEOUT"

    .line 931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    :cond_e3
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_f1

    const-string v2, "REG_SESS_TIMEOUT"

    .line 935
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x11

    int-to-short v1, v1

    :cond_f1
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_ff

    const-string v2, "DEV_PASSWORD_AUTH_FAILURE"

    .line 939
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x12

    int-to-short v1, v1

    :cond_ff
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_10d

    const-string v2, "CHAN_60G_NOT_SUPPORTED"

    .line 943
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x13

    int-to-short v1, v1

    :cond_10d
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_11b

    const-string v2, "PUBLIC_KEY_HASH_MISMATCH"

    .line 947
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x14

    int-to-short v1, v1

    :cond_11b
    if-eq p0, v1, :cond_13c

    .line 951
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

    :cond_13c
    const-string p0, " | "

    .line 953
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "NO_ERROR"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "OOB_IFACE_READ_ERROR"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "DECRYPTION_CRC_FAILURE"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "CHAN_24_NOT_SUPPORTED"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "CHAN_50_NOT_SUPPORTED"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "SIGNAL_TOO_WEAK"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "NETWORK_AUTH_FAILURE"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "NETWORK_ASSOC_FAILURE"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "NO_DHCP_RESPONSE"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "FAILED_DHCP_CONFIG"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "IP_ADDR_CONFLICT"

    return-object p0

    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "NO_CONN_TO_REGISTRAR"

    return-object p0

    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "MULTIPLE_PBC_DETECTED"

    return-object p0

    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "ROGUE_SUSPECTED"

    return-object p0

    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "DEVICE_BUSY"

    return-object p0

    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "SETUP_LOCKED"

    return-object p0

    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string p0, "MSG_TIMEOUT"

    return-object p0

    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string p0, "REG_SESS_TIMEOUT"

    return-object p0

    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string p0, "DEV_PASSWORD_AUTH_FAILURE"

    return-object p0

    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    const-string p0, "CHAN_60G_NOT_SUPPORTED"

    return-object p0

    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    const-string p0, "PUBLIC_KEY_HASH_MISMATCH"

    return-object p0

    .line 863
    :cond_8a
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
