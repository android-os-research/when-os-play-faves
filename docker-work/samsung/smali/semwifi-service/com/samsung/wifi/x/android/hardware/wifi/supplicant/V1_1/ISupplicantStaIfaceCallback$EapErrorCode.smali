.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$EapErrorCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapErrorCode"
.end annotation


# static fields
.field public static final SIM_GENERAL_FAILURE_AFTER_AUTH:I = 0x0

.field public static final SIM_GENERAL_FAILURE_BEFORE_AUTH:I = 0x4000

.field public static final SIM_NOT_SUBSCRIBED:I = 0x407

.field public static final SIM_TEMPORARILY_DENIED:I = 0x402

.field public static final SIM_VENDOR_SPECIFIC_EXPIRED_CERT:I = 0x4001


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit16 v1, p0, 0x402

    const/16 v2, 0x402

    if-ne v1, v2, :cond_16

    const-string v1, "SIM_TEMPORARILY_DENIED"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    and-int/lit16 v1, p0, 0x407

    const/16 v3, 0x407

    if-ne v1, v3, :cond_24

    const-string v1, "SIM_NOT_SUBSCRIBED"

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x407

    :cond_24
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_31

    const-string v1, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_31
    and-int/lit16 v1, p0, 0x4001

    const/16 v3, 0x4001

    if-ne v1, v3, :cond_3e

    const-string v1, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4001

    :cond_3e
    if-eq p0, v2, :cond_5a

    .line 144
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

    :cond_5a
    const-string p0, " | "

    .line 146
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    return-object p0

    :cond_5
    const/16 v0, 0x402

    if-ne p0, v0, :cond_c

    const-string p0, "SIM_TEMPORARILY_DENIED"

    return-object p0

    :cond_c
    const/16 v0, 0x407

    if-ne p0, v0, :cond_13

    const-string p0, "SIM_NOT_SUBSCRIBED"

    return-object p0

    :cond_13
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_1a

    const-string p0, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    return-object p0

    :cond_1a
    const/16 v0, 0x4001

    if-ne p0, v0, :cond_21

    const-string p0, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    return-object p0

    .line 120
    :cond_21
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
