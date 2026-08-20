.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttBw;
.super Ljava/lang/Object;
.source "RttBw.java"


# static fields
.field public static final BW_10MHZ:I = 0x2

.field public static final BW_160MHZ:I = 0x20

.field public static final BW_20MHZ:I = 0x4

.field public static final BW_40MHZ:I = 0x8

.field public static final BW_5MHZ:I = 0x1

.field public static final BW_80MHZ:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "BW_5MHZ"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "BW_10MHZ"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_29

    const-string v1, "BW_20MHZ"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_29
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_36

    const-string v1, "BW_40MHZ"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_36
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_43

    const-string v1, "BW_80MHZ"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_43
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_50

    const-string v1, "BW_160MHZ"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_50
    if-eq p0, v2, :cond_6c

    .line 61
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

    :cond_6c
    const-string p0, " | "

    .line 63
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "BW_5MHZ"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "BW_10MHZ"

    return-object p0

    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string p0, "BW_20MHZ"

    return-object p0

    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string p0, "BW_40MHZ"

    return-object p0

    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string p0, "BW_80MHZ"

    return-object p0

    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string p0, "BW_160MHZ"

    return-object p0

    .line 30
    :cond_27
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
