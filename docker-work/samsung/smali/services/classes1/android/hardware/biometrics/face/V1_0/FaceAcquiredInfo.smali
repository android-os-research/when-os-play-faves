.class public final Landroid/hardware/biometrics/face/V1_0/FaceAcquiredInfo;
.super Ljava/lang/Object;
.source "FaceAcquiredInfo.java"


# static fields
.field public static final FACE_OBSCURED:I = 0x13

.field public static final FACE_TOO_HIGH:I = 0x6

.field public static final FACE_TOO_LEFT:I = 0x9

.field public static final FACE_TOO_LOW:I = 0x7

.field public static final FACE_TOO_RIGHT:I = 0x8

.field public static final GOOD:I = 0x0

.field public static final INSUFFICIENT:I = 0x1

.field public static final NOT_DETECTED:I = 0xb

.field public static final PAN_TOO_EXTREME:I = 0x10

.field public static final POOR_GAZE:I = 0xa

.field public static final RECALIBRATE:I = 0xd

.field public static final ROLL_TOO_EXTREME:I = 0x12

.field public static final SENSOR_DIRTY:I = 0x15

.field public static final START:I = 0x14

.field public static final TILT_TOO_EXTREME:I = 0x11

.field public static final TOO_BRIGHT:I = 0x2

.field public static final TOO_CLOSE:I = 0x4

.field public static final TOO_DARK:I = 0x3

.field public static final TOO_DIFFERENT:I = 0xe

.field public static final TOO_FAR:I = 0x5

.field public static final TOO_MUCH_MOTION:I = 0xc

.field public static final TOO_SIMILAR:I = 0xf

.field public static final VENDOR:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "GOOD"

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "INSUFFICIENT"

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "TOO_BRIGHT"

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const-string v1, "TOO_DARK"

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2e
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    const-string v1, "TOO_CLOSE"

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3a
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_46

    const-string v1, "TOO_FAR"

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_46
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_52

    const-string v1, "FACE_TOO_HIGH"

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_52
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5e

    const-string v1, "FACE_TOO_LOW"

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_5e
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6b

    const-string v1, "FACE_TOO_RIGHT"

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_6b
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_78

    const-string v1, "FACE_TOO_LEFT"

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_78
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_85

    const-string v1, "POOR_GAZE"

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_85
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_92

    const-string v1, "NOT_DETECTED"

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_92
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9f

    const-string v1, "TOO_MUCH_MOTION"

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_9f
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_ac

    const-string v1, "RECALIBRATE"

    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_ac
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b9

    const-string v1, "TOO_DIFFERENT"

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_b9
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c6

    const-string v1, "TOO_SIMILAR"

    .line 311
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_c6
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_d3

    const-string v1, "PAN_TOO_EXTREME"

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_d3
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_e0

    const-string v1, "TILT_TOO_EXTREME"

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_e0
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_ed

    const-string v1, "ROLL_TOO_EXTREME"

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_ed
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_fa

    const-string v1, "FACE_OBSCURED"

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_fa
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_107

    const-string v1, "START"

    .line 331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x14

    :cond_107
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_114

    const-string v1, "SENSOR_DIRTY"

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x15

    :cond_114
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_121

    const-string v1, "VENDOR"

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_121
    if-eq p0, v2, :cond_13d

    .line 343
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

    :cond_13d
    const-string p0, " | "

    .line 345
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "GOOD"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "INSUFFICIENT"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "TOO_BRIGHT"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "TOO_DARK"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string p0, "TOO_CLOSE"

    return-object p0

    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string p0, "TOO_FAR"

    return-object p0

    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string p0, "FACE_TOO_HIGH"

    return-object p0

    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string p0, "FACE_TOO_LOW"

    return-object p0

    :cond_2f
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string p0, "FACE_TOO_RIGHT"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "FACE_TOO_LEFT"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_44

    const-string p0, "POOR_GAZE"

    return-object p0

    :cond_44
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4b

    const-string p0, "NOT_DETECTED"

    return-object p0

    :cond_4b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_52

    const-string p0, "TOO_MUCH_MOTION"

    return-object p0

    :cond_52
    const/16 v0, 0xd

    if-ne p0, v0, :cond_59

    const-string p0, "RECALIBRATE"

    return-object p0

    :cond_59
    const/16 v0, 0xe

    if-ne p0, v0, :cond_60

    const-string p0, "TOO_DIFFERENT"

    return-object p0

    :cond_60
    const/16 v0, 0xf

    if-ne p0, v0, :cond_67

    const-string p0, "TOO_SIMILAR"

    return-object p0

    :cond_67
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6e

    const-string p0, "PAN_TOO_EXTREME"

    return-object p0

    :cond_6e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_75

    const-string p0, "TILT_TOO_EXTREME"

    return-object p0

    :cond_75
    const/16 v0, 0x12

    if-ne p0, v0, :cond_7c

    const-string p0, "ROLL_TOO_EXTREME"

    return-object p0

    :cond_7c
    const/16 v0, 0x13

    if-ne p0, v0, :cond_83

    const-string p0, "FACE_OBSCURED"

    return-object p0

    :cond_83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_8a

    const-string p0, "START"

    return-object p0

    :cond_8a
    const/16 v0, 0x15

    if-ne p0, v0, :cond_91

    const-string p0, "SENSOR_DIRTY"

    return-object p0

    :cond_91
    const/16 v0, 0x16

    if-ne p0, v0, :cond_98

    const-string p0, "VENDOR"

    return-object p0

    .line 247
    :cond_98
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
