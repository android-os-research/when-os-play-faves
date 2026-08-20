.class public final Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$ParamSizeLimits;
.super Ljava/lang/Object;
.source "IHostapd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final SSID_MAX_LEN_IN_BYTES:I = 0x20

.field public static final WPA2_PSK_PASSPHRASE_MAX_LEN_IN_BYTES:I = 0x3f

.field public static final WPA2_PSK_PASSPHRASE_MIN_LEN_IN_BYTES:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_11

    const-string v1, "SSID_MAX_LEN_IN_BYTES"

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1f

    const-string v1, "WPA2_PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_1f
    and-int/lit8 v1, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_2c

    const-string v1, "WPA2_PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_2c
    if-eq p0, v2, :cond_48

    .line 135
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

    :cond_48
    const-string p0, " | "

    .line 137
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    if-ne p0, v0, :cond_7

    const-string p0, "SSID_MAX_LEN_IN_BYTES"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_e

    const-string p0, "WPA2_PSK_PASSPHRASE_MIN_LEN_IN_BYTES"

    return-object p0

    :cond_e
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_15

    const-string p0, "WPA2_PSK_PASSPHRASE_MAX_LEN_IN_BYTES"

    return-object p0

    .line 116
    :cond_15
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
