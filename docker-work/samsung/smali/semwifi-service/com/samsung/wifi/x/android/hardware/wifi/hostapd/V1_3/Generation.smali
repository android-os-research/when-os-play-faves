.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/Generation;
.super Ljava/lang/Object;
.source "Generation.java"


# static fields
.field public static final WIFI_STANDARD_11AC:I = 0x2

.field public static final WIFI_STANDARD_11AD:I = 0x4

.field public static final WIFI_STANDARD_11AX:I = 0x3

.field public static final WIFI_STANDARD_11N:I = 0x1

.field public static final WIFI_STANDARD_LEGACY:I = 0x0

.field public static final WIFI_STANDARD_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const-string v1, "WIFI_STANDARD_UNKNOWN"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v1, "WIFI_STANDARD_LEGACY"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    const-string v1, "WIFI_STANDARD_11N"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_22
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    const-string v1, "WIFI_STANDARD_11AC"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_2e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3a

    const-string v1, "WIFI_STANDARD_11AX"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_3a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_46

    const-string v1, "WIFI_STANDARD_11AD"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_46
    if-eq p0, v2, :cond_62

    .line 58
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

    :cond_62
    const-string p0, " | "

    .line 60
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string p0, "WIFI_STANDARD_UNKNOWN"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    const-string p0, "WIFI_STANDARD_LEGACY"

    return-object p0

    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const-string p0, "WIFI_STANDARD_11N"

    return-object p0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    const-string p0, "WIFI_STANDARD_11AC"

    return-object p0

    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    const-string p0, "WIFI_STANDARD_11AX"

    return-object p0

    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    const-string p0, "WIFI_STANDARD_11AD"

    return-object p0

    .line 30
    :cond_23
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
