.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork$KeyMgmtMask;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyMgmtMask"
.end annotation


# static fields
.field public static final DPP:I = 0x800000

.field public static final FILS_SHA256:I = 0x40000

.field public static final FILS_SHA384:I = 0x80000

.field public static final FT_EAP:I = 0x20

.field public static final FT_PSK:I = 0x40

.field public static final IEEE8021X:I = 0x8

.field public static final NONE:I = 0x4

.field public static final OSEN:I = 0x8000

.field public static final OWE:I = 0x400000

.field public static final SAE:I = 0x400

.field public static final SAE_PK:I = 0x80001

.field public static final SUITE_B_192:I = 0x20000

.field public static final WAPI_CERT:I = 0x2000

.field public static final WAPI_PSK:I = 0x1000

.field public static final WPA_EAP:I = 0x1

.field public static final WPA_EAP_SHA256:I = 0x80

.field public static final WPA_PSK:I = 0x2

.field public static final WPA_PSK_SHA256:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "WPA_EAP"

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "WPA_PSK"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_29

    const-string v1, "NONE"

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_29
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_36

    const-string v1, "IEEE8021X"

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_36
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_43

    const-string v1, "FT_EAP"

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_43
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_50

    const-string v1, "FT_PSK"

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_50
    const v1, 0x8000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_5d

    const-string v3, "OSEN"

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_5d
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6a

    const-string v1, "WPA_EAP_SHA256"

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_6a
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_77

    const-string v1, "WPA_PSK_SHA256"

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_77
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_84

    const-string v1, "SAE"

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_84
    const/high16 v1, 0x20000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_90

    const-string v3, "SUITE_B_192"

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_90
    const/high16 v1, 0x400000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_9c

    const-string v3, "OWE"

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_9c
    const/high16 v1, 0x800000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_a8

    const-string v3, "DPP"

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_a8
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_b5

    const-string v1, "WAPI_PSK"

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_b5
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c2

    const-string v1, "WAPI_CERT"

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_c2
    const/high16 v1, 0x40000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_ce

    const-string v3, "FILS_SHA256"

    .line 268
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_ce
    const/high16 v1, 0x80000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_da

    const-string v3, "FILS_SHA384"

    .line 272
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_da
    const v1, 0x80001

    and-int v3, p0, v1

    if-ne v3, v1, :cond_e7

    const-string v3, "SAE_PK"

    .line 276
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_e7
    if-eq p0, v2, :cond_103

    .line 280
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

    :cond_103
    const-string p0, " | "

    .line 282
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "WPA_EAP"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "WPA_PSK"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "NONE"

    return-object p0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "IEEE8021X"

    return-object p0

    :cond_19
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string p0, "FT_EAP"

    return-object p0

    :cond_20
    const/16 v0, 0x40

    if-ne p0, v0, :cond_27

    const-string p0, "FT_PSK"

    return-object p0

    :cond_27
    const v0, 0x8000

    if-ne p0, v0, :cond_2f

    const-string p0, "OSEN"

    return-object p0

    :cond_2f
    const/16 v0, 0x80

    if-ne p0, v0, :cond_36

    const-string p0, "WPA_EAP_SHA256"

    return-object p0

    :cond_36
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3d

    const-string p0, "WPA_PSK_SHA256"

    return-object p0

    :cond_3d
    const/16 v0, 0x400

    if-ne p0, v0, :cond_44

    const-string p0, "SAE"

    return-object p0

    :cond_44
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_4b

    const-string p0, "SUITE_B_192"

    return-object p0

    :cond_4b
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_52

    const-string p0, "OWE"

    return-object p0

    :cond_52
    const/high16 v0, 0x800000

    if-ne p0, v0, :cond_59

    const-string p0, "DPP"

    return-object p0

    :cond_59
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_60

    const-string p0, "WAPI_PSK"

    return-object p0

    :cond_60
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_67

    const-string p0, "WAPI_CERT"

    return-object p0

    :cond_67
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_6e

    const-string p0, "FILS_SHA256"

    return-object p0

    :cond_6e
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_75

    const-string p0, "FILS_SHA384"

    return-object p0

    :cond_75
    const v0, 0x80001

    if-ne p0, v0, :cond_7d

    const-string p0, "SAE_PK"

    return-object p0

    .line 201
    :cond_7d
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
