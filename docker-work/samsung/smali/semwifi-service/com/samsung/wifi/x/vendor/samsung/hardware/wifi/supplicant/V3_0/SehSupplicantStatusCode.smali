.class public final Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatusCode;
.super Ljava/lang/Object;
.source "SehSupplicantStatusCode.java"


# static fields
.field public static final FAILURE_ARGS_INVALID:I = 0x2

.field public static final FAILURE_IFACE_DISABLED:I = 0x6

.field public static final FAILURE_IFACE_EXISTS:I = 0x5

.field public static final FAILURE_IFACE_INVALID:I = 0x3

.field public static final FAILURE_IFACE_NOT_DISCONNECTED:I = 0x7

.field public static final FAILURE_IFACE_UNKNOWN:I = 0x4

.field public static final FAILURE_NETWORK_INVALID:I = 0x8

.field public static final FAILURE_NETWORK_UNKNOWN:I = 0x9

.field public static final FAILURE_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SUCCESS"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "FAILURE_UNKNOWN"

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "FAILURE_ARGS_INVALID"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const-string v1, "FAILURE_IFACE_INVALID"

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    const-string v1, "FAILURE_IFACE_UNKNOWN"

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    const-string v1, "FAILURE_IFACE_EXISTS"

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    const-string v1, "FAILURE_IFACE_DISABLED"

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5e

    const-string v1, "FAILURE_IFACE_NOT_DISCONNECTED"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_5e
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6b

    const-string v1, "FAILURE_NETWORK_INVALID"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_6b
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_78

    const-string v1, "FAILURE_NETWORK_UNKNOWN"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_78
    if-eq p0, v2, :cond_94

    .line 120
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

    :cond_94
    const-string p0, " | "

    .line 122
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "SUCCESS"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "FAILURE_UNKNOWN"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "FAILURE_ARGS_INVALID"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "FAILURE_IFACE_INVALID"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "FAILURE_IFACE_UNKNOWN"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "FAILURE_IFACE_EXISTS"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "FAILURE_IFACE_DISABLED"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "FAILURE_IFACE_NOT_DISCONNECTED"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "FAILURE_NETWORK_INVALID"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "FAILURE_NETWORK_UNKNOWN"

    return-object p0

    .line 76
    :cond_3d
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
