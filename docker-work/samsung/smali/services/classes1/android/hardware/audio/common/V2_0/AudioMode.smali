.class public final Landroid/hardware/audio/common/V2_0/AudioMode;
.super Ljava/lang/Object;
.source "AudioMode.java"


# static fields
.field public static final CNT:I = 0x4

.field public static final CURRENT:I = -0x1

.field public static final INVALID:I = -0x2

.field public static final IN_CALL:I = 0x2

.field public static final IN_COMMUNICATION:I = 0x3

.field public static final MAX:I = 0x3

.field public static final NORMAL:I = 0x0

.field public static final RINGTONE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 7

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, -0x2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_10

    const-string v1, "INVALID"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1d

    const-string v1, "CURRENT"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, -0x1

    :cond_1d
    const-string v1, "NORMAL"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    const-string v1, "RINGTONE"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_2e
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3a

    const-string v1, "IN_CALL"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_3a
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_46

    const-string v4, "IN_COMMUNICATION"

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_46
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_52

    const-string v4, "CNT"

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_52
    if-ne v1, v3, :cond_5b

    const-string v1, "MAX"

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_5b
    if-eq p0, v2, :cond_77

    .line 74
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

    :cond_77
    const-string p0, " | "

    .line 76
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x2

    if-ne p0, v0, :cond_6

    const-string p0, "INVALID"

    return-object p0

    :cond_6
    const/4 v0, -0x1

    if-ne p0, v0, :cond_c

    const-string p0, "CURRENT"

    return-object p0

    :cond_c
    if-nez p0, :cond_11

    const-string p0, "NORMAL"

    return-object p0

    :cond_11
    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    const-string p0, "RINGTONE"

    return-object p0

    :cond_17
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    const-string p0, "IN_CALL"

    return-object p0

    :cond_1d
    const/4 v0, 0x3

    if-ne p0, v0, :cond_23

    const-string p0, "IN_COMMUNICATION"

    return-object p0

    :cond_23
    const/4 v1, 0x4

    if-ne p0, v1, :cond_29

    const-string p0, "CNT"

    return-object p0

    :cond_29
    if-ne p0, v0, :cond_2e

    const-string p0, "MAX"

    return-object p0

    .line 38
    :cond_2e
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
