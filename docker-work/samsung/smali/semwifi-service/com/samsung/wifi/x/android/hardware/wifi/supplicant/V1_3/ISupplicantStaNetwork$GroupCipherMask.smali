.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$GroupCipherMask;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupCipherMask"
.end annotation


# static fields
.field public static final CCMP:I = 0x10

.field public static final GCMP_256:I = 0x100

.field public static final GTK_NOT_USED:I = 0x4000

.field public static final SMS4:I = 0x80

.field public static final TKIP:I = 0x8

.field public static final WEP104:I = 0x4

.field public static final WEP40:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const-string v1, "WEP40"

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1d

    const-string v1, "WEP104"

    .line 445
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_1d
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2a

    const-string v1, "TKIP"

    .line 449
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_2a
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_37

    const-string v1, "CCMP"

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_37
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_44

    const-string v1, "GTK_NOT_USED"

    .line 457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_44
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_51

    const-string v1, "GCMP_256"

    .line 461
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_51
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_5e

    const-string v1, "SMS4"

    .line 465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_5e
    if-eq p0, v2, :cond_7a

    .line 469
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

    :cond_7a
    const-string p0, " | "

    .line 471
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const-string p0, "WEP40"

    return-object p0

    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    const-string p0, "WEP104"

    return-object p0

    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    const-string p0, "TKIP"

    return-object p0

    :cond_13
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1a

    const-string p0, "CCMP"

    return-object p0

    :cond_1a
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_21

    const-string p0, "GTK_NOT_USED"

    return-object p0

    :cond_21
    const/16 v0, 0x100

    if-ne p0, v0, :cond_28

    const-string p0, "GCMP_256"

    return-object p0

    :cond_28
    const/16 v0, 0x80

    if-ne p0, v0, :cond_2f

    const-string p0, "SMS4"

    return-object p0

    .line 434
    :cond_2f
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
