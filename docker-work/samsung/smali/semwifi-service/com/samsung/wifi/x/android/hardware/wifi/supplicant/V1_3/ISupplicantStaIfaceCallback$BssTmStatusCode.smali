.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmStatusCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BssTmStatusCode"
.end annotation


# static fields
.field public static final ACCEPT:B = 0x0t

.field public static final REJECT_BSS_TERMINATION_DELAY_REQUEST:B = 0x5t

.field public static final REJECT_BSS_TERMINATION_UNDESIRED:B = 0x4t

.field public static final REJECT_INSUFFICIENT_BEACON:B = 0x2t

.field public static final REJECT_INSUFFICIENT_CAPABITY:B = 0x3t

.field public static final REJECT_LEAVING_ESS:B = 0x8t

.field public static final REJECT_NO_SUITABLE_CANDIDATES:B = 0x7t

.field public static final REJECT_STA_CANDIDATE_LIST_PROVIDED:B = 0x6t

.field public static final REJECT_UNSPECIFIED:B = 0x1t


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .registers 5

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ACCEPT"

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const-string v1, "REJECT_UNSPECIFIED"

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-byte v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    const-string v2, "REJECT_INSUFFICIENT_BEACON"

    .line 149
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :cond_24
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    const-string v2, "REJECT_INSUFFICIENT_CAPABITY"

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    :cond_31
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3e

    const-string v2, "REJECT_BSS_TERMINATION_UNDESIRED"

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    :cond_3e
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4b

    const-string v2, "REJECT_BSS_TERMINATION_DELAY_REQUEST"

    .line 161
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    :cond_4b
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_58

    const-string v2, "REJECT_STA_CANDIDATE_LIST_PROVIDED"

    .line 165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    :cond_58
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_65

    const-string v2, "REJECT_NO_SUITABLE_CANDIDATES"

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    :cond_65
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_73

    const-string v2, "REJECT_LEAVING_ESS"

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    :cond_73
    if-eq p0, v1, :cond_94

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    const-string p0, " | "

    .line 179
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "ACCEPT"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "REJECT_UNSPECIFIED"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "REJECT_INSUFFICIENT_BEACON"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "REJECT_INSUFFICIENT_CAPABITY"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "REJECT_BSS_TERMINATION_UNDESIRED"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "REJECT_BSS_TERMINATION_DELAY_REQUEST"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "REJECT_STA_CANDIDATE_LIST_PROVIDED"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "REJECT_NO_SUITABLE_CANDIDATES"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "REJECT_LEAVING_ESS"

    return-object p0

    .line 137
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
