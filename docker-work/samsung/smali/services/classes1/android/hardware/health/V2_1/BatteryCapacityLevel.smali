.class public final Landroid/hardware/health/V2_1/BatteryCapacityLevel;
.super Ljava/lang/Object;
.source "BatteryCapacityLevel.java"


# static fields
.field public static final CRITICAL:I = 0x1

.field public static final FULL:I = 0x5

.field public static final HIGH:I = 0x4

.field public static final LOW:I = 0x2

.field public static final NORMAL:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const-string v1, "UNSUPPORTED"

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v1, "UNKNOWN"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    const-string v1, "CRITICAL"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_22
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    const-string v1, "LOW"

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_2e
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3a

    const-string v1, "NORMAL"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_3a
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_46

    const-string v1, "HIGH"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_46
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_52

    const-string v1, "FULL"

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_52
    if-eq p0, v2, :cond_6e

    .line 94
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

    :cond_6e
    const-string p0, " | "

    .line 96
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string p0, "UNSUPPORTED"

    return-object p0

    :cond_6
    if-nez p0, :cond_b

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const-string p0, "CRITICAL"

    return-object p0

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    const-string p0, "LOW"

    return-object p0

    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    const-string p0, "NORMAL"

    return-object p0

    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    const-string p0, "HIGH"

    return-object p0

    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    const-string p0, "FULL"

    return-object p0

    .line 62
    :cond_29
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
