.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;
.super Ljava/lang/Object;
.source "AidlConversionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAidlAcquiredInfo(I)B
    .registers 4

    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v1, 0x1

    if-nez p0, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x2

    if-ne p0, v1, :cond_e

    return v2

    :cond_e
    const/4 v1, 0x3

    if-ne p0, v2, :cond_12

    return v1

    :cond_12
    const/4 v2, 0x4

    if-ne p0, v1, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x5

    if-ne p0, v2, :cond_1a

    return v1

    :cond_1a
    const/4 v2, 0x6

    if-ne p0, v1, :cond_1e

    return v2

    :cond_1e
    const/4 v1, 0x7

    if-ne p0, v2, :cond_22

    return v1

    :cond_22
    if-ne p0, v1, :cond_25

    return v0

    :cond_25
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2a

    return v1

    :cond_2a
    const/16 v1, 0x9

    if-ne p0, v1, :cond_31

    const/16 p0, 0xb

    return p0

    :cond_31
    return v0
.end method

.method public static toAidlError(I)B
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x11

    if-ne p0, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    return v1

    :cond_a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_e

    return v1

    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_12

    return v1

    :cond_12
    const/4 v1, 0x4

    if-ne p0, v1, :cond_16

    return v1

    :cond_16
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1a

    return v1

    :cond_1a
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1e

    return v1

    :cond_1e
    const/16 v1, 0x8

    if-ne p0, v1, :cond_24

    const/4 p0, 0x7

    return p0

    :cond_24
    const/16 v2, 0x12

    if-ne p0, v2, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public static toFrameworkAcquiredInfo(B)I
    .registers 4

    const/16 v0, 0x8

    if-nez p0, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 v2, 0x2

    if-ne p0, v2, :cond_e

    return v1

    :cond_e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_12

    return v2

    :cond_12
    const/4 v2, 0x4

    if-ne p0, v2, :cond_16

    return v1

    :cond_16
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1a

    return v2

    :cond_1a
    const/4 v2, 0x6

    if-ne p0, v2, :cond_1e

    return v1

    :cond_1e
    const/4 v1, 0x7

    if-ne p0, v1, :cond_22

    return v2

    :cond_22
    if-ne p0, v0, :cond_25

    return v1

    :cond_25
    const/16 v1, 0x9

    if-ne p0, v1, :cond_2a

    return v0

    :cond_2a
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2f

    return v2

    :cond_2f
    const/16 v2, 0xb

    if-ne p0, v2, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public static toFrameworkError(B)I
    .registers 4

    const/16 v0, 0x11

    if-nez p0, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    return v1

    :cond_9
    const/4 v1, 0x2

    if-ne p0, v1, :cond_d

    return v1

    :cond_d
    const/4 v1, 0x3

    if-ne p0, v1, :cond_11

    return v1

    :cond_11
    const/4 v1, 0x4

    if-ne p0, v1, :cond_15

    return v1

    :cond_15
    const/4 v1, 0x5

    if-ne p0, v1, :cond_19

    return v1

    :cond_19
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1d

    return v1

    :cond_1d
    const/4 v1, 0x7

    const/16 v2, 0x8

    if-ne p0, v1, :cond_23

    return v2

    :cond_23
    if-ne p0, v2, :cond_28

    const/16 p0, 0x12

    return p0

    :cond_28
    return v0
.end method
