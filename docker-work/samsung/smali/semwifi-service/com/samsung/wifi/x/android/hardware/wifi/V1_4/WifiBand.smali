.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/WifiBand;
.super Ljava/lang/Object;
.source "WifiBand.java"


# static fields
.field public static final BAND_24GHZ:I = 0x1

.field public static final BAND_24GHZ_5GHZ:I = 0x3

.field public static final BAND_24GHZ_5GHZ_6GHZ:I = 0xb

.field public static final BAND_24GHZ_5GHZ_WITH_DFS:I = 0x7

.field public static final BAND_24GHZ_5GHZ_WITH_DFS_6GHZ:I = 0xf

.field public static final BAND_5GHZ:I = 0x2

.field public static final BAND_5GHZ_6GHZ:I = 0xa

.field public static final BAND_5GHZ_DFS:I = 0x4

.field public static final BAND_5GHZ_WITH_DFS:I = 0x6

.field public static final BAND_6GHZ:I = 0x8

.field public static final BAND_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "BAND_UNSPECIFIED"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "BAND_24GHZ"

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "BAND_5GHZ"

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2e

    const-string v1, "BAND_5GHZ_DFS"

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2e
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3a

    const-string v1, "BAND_5GHZ_WITH_DFS"

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_3a
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_46

    const-string v1, "BAND_24GHZ_5GHZ"

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_46
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_52

    const-string v1, "BAND_24GHZ_5GHZ_WITH_DFS"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_52
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_5f

    const-string v1, "BAND_6GHZ"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_5f
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_6c

    const-string v1, "BAND_5GHZ_6GHZ"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_6c
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_79

    const-string v1, "BAND_24GHZ_5GHZ_6GHZ"

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_79
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_86

    const-string v1, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ"

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_86
    if-eq p0, v2, :cond_a2

    .line 128
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

    :cond_a2
    const-string p0, " | "

    .line 130
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "BAND_UNSPECIFIED"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "BAND_24GHZ"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "BAND_5GHZ"

    return-object p0

    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    const-string p0, "BAND_5GHZ_DFS"

    return-object p0

    :cond_17
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1d

    const-string p0, "BAND_5GHZ_WITH_DFS"

    return-object p0

    :cond_1d
    const/4 v0, 0x3

    if-ne p0, v0, :cond_23

    const-string p0, "BAND_24GHZ_5GHZ"

    return-object p0

    :cond_23
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    const-string p0, "BAND_24GHZ_5GHZ_WITH_DFS"

    return-object p0

    :cond_29
    const/16 v0, 0x8

    if-ne p0, v0, :cond_30

    const-string p0, "BAND_6GHZ"

    return-object p0

    :cond_30
    const/16 v0, 0xa

    if-ne p0, v0, :cond_37

    const-string p0, "BAND_5GHZ_6GHZ"

    return-object p0

    :cond_37
    const/16 v0, 0xb

    if-ne p0, v0, :cond_3e

    const-string p0, "BAND_24GHZ_5GHZ_6GHZ"

    return-object p0

    :cond_3e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_45

    const-string p0, "BAND_24GHZ_5GHZ_WITH_DFS_6GHZ"

    return-object p0

    .line 80
    :cond_45
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
