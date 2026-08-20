.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaScanLimits;
.super Ljava/lang/Object;
.source "StaScanLimits.java"


# static fields
.field public static final MAX_AP_CACHE_PER_SCAN:I = 0x20

.field public static final MAX_BUCKETS:I = 0x10

.field public static final MAX_CHANNELS:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_12

    const-string v3, "MAX_CHANNELS"

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-ne v1, v2, :cond_1c

    const-string v1, "MAX_BUCKETS"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x10

    :cond_1c
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_29

    const-string v1, "MAX_AP_CACHE_PER_SCAN"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x20

    :cond_29
    if-eq p0, v3, :cond_45

    .line 37
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

    :cond_45
    const-string p0, " | "

    .line 39
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x10

    if-ne p0, v0, :cond_7

    const-string p0, "MAX_CHANNELS"

    return-object p0

    :cond_7
    if-ne p0, v0, :cond_c

    const-string p0, "MAX_BUCKETS"

    return-object p0

    :cond_c
    const/16 v0, 0x20

    if-ne p0, v0, :cond_13

    const-string p0, "MAX_AP_CACHE_PER_SCAN"

    return-object p0

    .line 18
    :cond_13
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
