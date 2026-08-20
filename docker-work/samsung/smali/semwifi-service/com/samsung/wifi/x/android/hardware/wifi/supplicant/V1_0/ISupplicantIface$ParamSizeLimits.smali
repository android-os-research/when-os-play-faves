.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$ParamSizeLimits;
.super Ljava/lang/Object;
.source "ISupplicantIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParamSizeLimits"
.end annotation


# static fields
.field public static final WPS_DEVICE_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MANUFACTURER_MAX_LEN:I = 0x40

.field public static final WPS_MODEL_NAME_MAX_LEN:I = 0x20

.field public static final WPS_MODEL_NUMBER_MAX_LEN:I = 0x20

.field public static final WPS_SERIAL_NUMBER_MAX_LEN:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 7

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_12

    const-string v3, "WPS_DEVICE_NAME_MAX_LEN"

    .line 123
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    and-int/lit8 v4, p0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_20

    const-string v4, "WPS_MANUFACTURER_MAX_LEN"

    .line 127
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x40

    :cond_20
    if-ne v1, v2, :cond_29

    const-string v4, "WPS_MODEL_NAME_MAX_LEN"

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x20

    :cond_29
    if-ne v1, v2, :cond_32

    const-string v4, "WPS_MODEL_NUMBER_MAX_LEN"

    .line 135
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x20

    :cond_32
    if-ne v1, v2, :cond_3b

    const-string v1, "WPS_SERIAL_NUMBER_MAX_LEN"

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x20

    :cond_3b
    if-eq p0, v3, :cond_57

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v3

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    const-string p0, " | "

    .line 145
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    if-ne p0, v0, :cond_7

    const-string p0, "WPS_DEVICE_NAME_MAX_LEN"

    return-object p0

    :cond_7
    const/16 v1, 0x40

    if-ne p0, v1, :cond_e

    const-string p0, "WPS_MANUFACTURER_MAX_LEN"

    return-object p0

    :cond_e
    if-ne p0, v0, :cond_13

    const-string p0, "WPS_MODEL_NAME_MAX_LEN"

    return-object p0

    :cond_13
    if-ne p0, v0, :cond_18

    const-string p0, "WPS_MODEL_NUMBER_MAX_LEN"

    return-object p0

    :cond_18
    if-ne p0, v0, :cond_1d

    const-string p0, "WPS_SERIAL_NUMBER_MAX_LEN"

    return-object p0

    .line 116
    :cond_1d
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
