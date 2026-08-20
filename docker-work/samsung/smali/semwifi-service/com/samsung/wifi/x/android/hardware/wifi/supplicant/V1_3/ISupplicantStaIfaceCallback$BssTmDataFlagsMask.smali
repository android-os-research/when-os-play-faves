.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmDataFlagsMask;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BssTmDataFlagsMask"
.end annotation


# static fields
.field public static final MBO_ASSOC_RETRY_DELAY_INCLUDED:I = 0x40

.field public static final MBO_CELLULAR_DATA_CONNECTION_PREFERENCE_INCLUDED:I = 0x80

.field public static final MBO_TRANSITION_REASON_CODE_INCLUDED:I = 0x20

.field public static final WNM_MODE_ABRIDGED:I = 0x2

.field public static final WNM_MODE_BSS_TERMINATION_INCLUDED:I = 0x8

.field public static final WNM_MODE_DISASSOCIATION_IMMINENT:I = 0x4

.field public static final WNM_MODE_ESS_DISASSOCIATION_IMMINENT:I = 0x10

.field public static final WNM_MODE_PREFERRED_CANDIDATE_LIST_INCLUDED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "WNM_MODE_PREFERRED_CANDIDATE_LIST_INCLUDED"

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "WNM_MODE_ABRIDGED"

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_29

    const-string v1, "WNM_MODE_DISASSOCIATION_IMMINENT"

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_29
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_36

    const-string v1, "WNM_MODE_BSS_TERMINATION_INCLUDED"

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_36
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_43

    const-string v1, "WNM_MODE_ESS_DISASSOCIATION_IMMINENT"

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_43
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_50

    const-string v1, "MBO_TRANSITION_REASON_CODE_INCLUDED"

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_50
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5d

    const-string v1, "MBO_ASSOC_RETRY_DELAY_INCLUDED"

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_5d
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6a

    const-string v1, "MBO_CELLULAR_DATA_CONNECTION_PREFERENCE_INCLUDED"

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_6a
    if-eq p0, v2, :cond_86

    .line 284
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

    :cond_86
    const-string p0, " | "

    .line 286
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "WNM_MODE_PREFERRED_CANDIDATE_LIST_INCLUDED"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "WNM_MODE_ABRIDGED"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "WNM_MODE_DISASSOCIATION_IMMINENT"

    return-object p0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "WNM_MODE_BSS_TERMINATION_INCLUDED"

    return-object p0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string p0, "WNM_MODE_ESS_DISASSOCIATION_IMMINENT"

    return-object p0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string p0, "MBO_TRANSITION_REASON_CODE_INCLUDED"

    return-object p0

    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string p0, "MBO_ASSOC_RETRY_DELAY_INCLUDED"

    return-object p0

    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string p0, "MBO_CELLULAR_DATA_CONNECTION_PREFERENCE_INCLUDED"

    return-object p0

    .line 245
    :cond_35
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
