.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttStatus;
.super Ljava/lang/Object;
.source "RttStatus.java"


# static fields
.field public static final ABORTED:I = 0x8

.field public static final FAILURE:I = 0x1

.field public static final FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final FAIL_INVALID_TS:I = 0x9

.field public static final FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final FAIL_NO_CAPABILITY:I = 0x7

.field public static final FAIL_NO_RSP:I = 0x2

.field public static final FAIL_PROTOCOL:I = 0xa

.field public static final FAIL_REJECTED:I = 0x3

.field public static final FAIL_SCHEDULE:I = 0xb

.field public static final FAIL_TM_TIMEOUT:I = 0x5

.field public static final INVALID_REQ:I = 0xd

.field public static final NO_WIFI:I = 0xe

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SUCCESS"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "FAILURE"

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "FAIL_NO_RSP"

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const-string v1, "FAIL_REJECTED"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    const-string v1, "FAIL_NOT_SCHEDULED_YET"

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    const-string v1, "FAIL_TM_TIMEOUT"

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    const-string v1, "FAIL_AP_ON_DIFF_CHANNEL"

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5e

    const-string v1, "FAIL_NO_CAPABILITY"

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_5e
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6b

    const-string v1, "ABORTED"

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_6b
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_78

    const-string v1, "FAIL_INVALID_TS"

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_78
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_85

    const-string v1, "FAIL_PROTOCOL"

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_85
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_92

    const-string v1, "FAIL_SCHEDULE"

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_92
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9f

    const-string v1, "FAIL_BUSY_TRY_LATER"

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_9f
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ac

    const-string v1, "INVALID_REQ"

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_ac
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b9

    const-string v1, "NO_WIFI"

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_b9
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c6

    const-string v1, "FAIL_FTM_PARAM_OVERRIDE"

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_c6
    if-eq p0, v2, :cond_e2

    .line 180
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

    :cond_e2
    const-string p0, " | "

    .line 182
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "SUCCESS"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "FAILURE"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "FAIL_NO_RSP"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "FAIL_REJECTED"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "FAIL_NOT_SCHEDULED_YET"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "FAIL_TM_TIMEOUT"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "FAIL_AP_ON_DIFF_CHANNEL"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "FAIL_NO_CAPABILITY"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "ABORTED"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "FAIL_INVALID_TS"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "FAIL_PROTOCOL"

    return-object p0

    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "FAIL_SCHEDULE"

    return-object p0

    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "FAIL_BUSY_TRY_LATER"

    return-object p0

    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "INVALID_REQ"

    return-object p0

    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "NO_WIFI"

    return-object p0

    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "FAIL_FTM_PARAM_OVERRIDE"

    return-object p0

    .line 112
    :cond_67
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
