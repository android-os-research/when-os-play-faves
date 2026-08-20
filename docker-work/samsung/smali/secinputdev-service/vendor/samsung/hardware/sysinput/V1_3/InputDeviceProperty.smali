.class public final Lvendor/samsung/hardware/sysinput/V1_3/InputDeviceProperty;
.super Ljava/lang/Object;
.source "InputDeviceProperty.java"


# static fields
.field public static final AOD_ACTIVE_AREA:I = 0x6

.field public static final AOD_ENABLE:I = 0x7

.field public static final BLE_CHARGING:I = 0xc

.field public static final CMD_LIST:I = 0x2

.field public static final EPEN_MEMO:I = 0xe

.field public static final EPEN_POS:I = 0x8

.field public static final EPEN_SAVING:I = 0xd

.field public static final FEATURE:I = 0x1

.field public static final FOD_INFO:I = 0x4

.field public static final FOD_POS:I = 0x5

.field public static final HAND_EDGE:I = 0xf

.field public static final HW_PARAM:I = 0xa

.field public static final LP_DUMP:I = 0xb

.field public static final PROX_OFF:I = 0x9

.field public static final SCRUB_POS:I = 0x3


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

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 117
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 118
    const-string v2, "FEATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x1

    .line 121
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 122
    const-string v2, "CMD_LIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x2

    .line 125
    :cond_1e
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 126
    const-string v2, "SCRUB_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x3

    .line 129
    :cond_2a
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 130
    const-string v2, "FOD_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x4

    .line 133
    :cond_36
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    .line 134
    const-string v2, "FOD_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x5

    .line 137
    :cond_42
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 138
    const-string v2, "AOD_ACTIVE_AREA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x6

    .line 141
    :cond_4e
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5a

    .line 142
    const-string v2, "AOD_ENABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x7

    .line 145
    :cond_5a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_67

    .line 146
    const-string v2, "EPEN_POS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0x8

    .line 149
    :cond_67
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    .line 150
    const-string v2, "PROX_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x9

    .line 153
    :cond_74
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    .line 154
    const-string v2, "HW_PARAM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0xa

    .line 157
    :cond_81
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8e

    .line 158
    const-string v2, "LP_DUMP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xb

    .line 161
    :cond_8e
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9b

    .line 162
    const-string v2, "BLE_CHARGING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xc

    .line 165
    :cond_9b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a8

    .line 166
    const-string v2, "EPEN_SAVING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0xd

    .line 169
    :cond_a8
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b5

    .line 170
    const-string v2, "EPEN_MEMO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0xe

    .line 173
    :cond_b5
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c2

    .line 174
    const-string v2, "HAND_EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0xf

    .line 177
    :cond_c2
    if-eq p0, v1, :cond_e0

    .line 178
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

    .line 180
    :cond_e0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 66
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 67
    const-string v0, "FEATURE"

    return-object v0

    .line 69
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 70
    const-string v0, "CMD_LIST"

    return-object v0

    .line 72
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 73
    const-string v0, "SCRUB_POS"

    return-object v0

    .line 75
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 76
    const-string v0, "FOD_INFO"

    return-object v0

    .line 78
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 79
    const-string v0, "FOD_POS"

    return-object v0

    .line 81
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    .line 82
    const-string v0, "AOD_ACTIVE_AREA"

    return-object v0

    .line 84
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    .line 85
    const-string v0, "AOD_ENABLE"

    return-object v0

    .line 87
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    .line 88
    const-string v0, "EPEN_POS"

    return-object v0

    .line 90
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    .line 91
    const-string v0, "PROX_OFF"

    return-object v0

    .line 93
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    .line 94
    const-string v0, "HW_PARAM"

    return-object v0

    .line 96
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    .line 97
    const-string v0, "LP_DUMP"

    return-object v0

    .line 99
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    .line 100
    const-string v0, "BLE_CHARGING"

    return-object v0

    .line 102
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    .line 103
    const-string v0, "EPEN_SAVING"

    return-object v0

    .line 105
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    .line 106
    const-string v0, "EPEN_MEMO"

    return-object v0

    .line 108
    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    .line 109
    const-string v0, "HAND_EDGE"

    return-object v0

    .line 111
    :cond_62
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
