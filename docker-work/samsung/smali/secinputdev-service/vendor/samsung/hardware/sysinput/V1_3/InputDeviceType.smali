.class public final Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceType;
.super Ljava/lang/Object;
.source "InputDeviceType.java"


# static fields
.field public static final HALL:I = 0xa

.field public static final HALL_DIGITAL:I = 0xb

.field public static final KEY:I = 0x1e

.field public static final KEYBOARD:I = 0x28

.field public static final RESERVED:I = 0x64

.field public static final SPEN:I = 0x14

.field public static final TAAS:I = 0x32

.field public static final TSP_1:I = 0x1

.field public static final TSP_2:I = 0x2

.field public static final TSP_3:I = 0x3

.field public static final TSP_MAX:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 81
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 82
    const-string v2, "TSP_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x1

    .line 85
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 86
    const-string v2, "TSP_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x2

    .line 89
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 90
    const-string v2, "TSP_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x3

    .line 93
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 94
    const-string v2, "TSP_MAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x4

    .line 97
    :cond_36
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_43

    .line 98
    const-string v2, "HALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0xa

    .line 101
    :cond_43
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_50

    .line 102
    const-string v2, "HALL_DIGITAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0xb

    .line 105
    :cond_50
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_5d

    .line 106
    const-string v2, "SPEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x14

    .line 109
    :cond_5d
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_6a

    .line 110
    const-string v2, "KEY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x1e

    .line 113
    :cond_6a
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_77

    .line 114
    const-string v2, "KEYBOARD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x28

    .line 117
    :cond_77
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_84

    .line 118
    const-string v2, "TAAS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x32

    .line 121
    :cond_84
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_91

    .line 122
    const-string v2, "RESERVED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x64

    .line 125
    :cond_91
    if-eq p0, v1, :cond_af

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_af
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 42
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 43
    const-string v0, "TSP_1"

    return-object v0

    .line 45
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 46
    const-string v0, "TSP_2"

    return-object v0

    .line 48
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 49
    const-string v0, "TSP_3"

    return-object v0

    .line 51
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 52
    const-string v0, "TSP_MAX"

    return-object v0

    .line 54
    :cond_18
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1f

    .line 55
    const-string v0, "HALL"

    return-object v0

    .line 57
    :cond_1f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_26

    .line 58
    const-string v0, "HALL_DIGITAL"

    return-object v0

    .line 60
    :cond_26
    const/16 v0, 0x14

    if-ne p0, v0, :cond_2d

    .line 61
    const-string v0, "SPEN"

    return-object v0

    .line 63
    :cond_2d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_34

    .line 64
    const-string v0, "KEY"

    return-object v0

    .line 66
    :cond_34
    const/16 v0, 0x28

    if-ne p0, v0, :cond_3b

    .line 67
    const-string v0, "KEYBOARD"

    return-object v0

    .line 69
    :cond_3b
    const/16 v0, 0x32

    if-ne p0, v0, :cond_42

    .line 70
    const-string v0, "TAAS"

    return-object v0

    .line 72
    :cond_42
    const/16 v0, 0x64

    if-ne p0, v0, :cond_49

    .line 73
    const-string v0, "RESERVED"

    return-object v0

    .line 75
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
