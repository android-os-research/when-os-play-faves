.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork$GroupMgmtCipherMask;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMgmtCipherMask"
.end annotation


# static fields
.field public static final BIP_CMAC_256:I = 0x2000

.field public static final BIP_GMAC_128:I = 0x800

.field public static final BIP_GMAC_256:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_11

    const-string v1, "BIP_GMAC_128"

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_1f

    const-string v1, "BIP_GMAC_256"

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_1f
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_2c

    const-string v1, "BIP_CMAC_256"

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_2c
    if-eq p0, v2, :cond_48

    .line 401
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

    .line 403
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x800

    if-ne p0, v0, :cond_7

    const-string p0, "BIP_GMAC_128"

    return-object p0

    :cond_7
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_e

    const-string p0, "BIP_GMAC_256"

    return-object p0

    :cond_e
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_15

    const-string p0, "BIP_CMAC_256"

    return-object p0

    .line 382
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
