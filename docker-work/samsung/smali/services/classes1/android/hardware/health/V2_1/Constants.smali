.class public final Landroid/hardware/health/V2_1/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BATTERY_CHARGE_TIME_TO_FULL_NOW_SECONDS_UNSUPPORTED:J = -0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(J)Ljava/lang/String;
    .registers 7

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, -0x1

    and-long v3, p0, v1

    cmp-long v3, v3, v1

    if-nez v3, :cond_13

    const-string v3, "BATTERY_CHARGE_TIME_TO_FULL_NOW_SECONDS_UNSUPPORTED"

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_13
    const-wide/16 v1, 0x0

    :goto_15
    cmp-long v3, p0, v1

    if-eqz v3, :cond_33

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-long v1, v1

    and-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const-string p0, " | "

    .line 23
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-string p0, "BATTERY_CHARGE_TIME_TO_FULL_NOW_SECONDS_UNSUPPORTED"

    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
