.class public Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultParameters"
.end annotation


# static fields
.field public static IDX_DYNAMIC_PROTECT:I = 0x0

.field public static IDX_DYNAMIC_REENTRY:I = 0x0

.field public static IDX_PROTECTED_HOME:I = 0x3

.field public static IDX_PROTECTED_LMKD:I = 0x2

.field public static IDX_RAM:I = 0x0

.field public static IDX_TARGET_FREE:I = 0x1

.field public static UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I = 0x20

.field public static UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I = 0x20

.field public static UNKNOWN_GB_TARGET_FREE:I = 0x8000

.field public static sDynamicParameters:[[F

.field public static sParameters:[[I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetIDX_PROTECTED_HOME()I
    .registers 1

    sget v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetIDX_RAM()I
    .registers 1

    sget v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetIDX_TARGET_FREE()I
    .registers 1

    sget v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsParameters()[[I
    .registers 1

    sget-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 11

    const/16 v0, 0x8

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 40
    fill-array-data v3, :array_88

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_96

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a4

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_b2

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_c0

    const/4 v8, 0x4

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_ce

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_dc

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_ea

    const/4 v10, 0x7

    aput-object v3, v1, v10

    sput-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    .line 50
    sput v6, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    .line 51
    sput v5, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    new-array v0, v0, [[F

    new-array v1, v7, [F

    .line 52
    fill-array-data v1, :array_f8

    aput-object v1, v0, v4

    new-array v1, v7, [F

    fill-array-data v1, :array_102

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_10c

    aput-object v1, v0, v6

    new-array v1, v7, [F

    fill-array-data v1, :array_116

    aput-object v1, v0, v7

    new-array v1, v7, [F

    fill-array-data v1, :array_120

    aput-object v1, v0, v8

    new-array v1, v7, [F

    fill-array-data v1, :array_12a

    aput-object v1, v0, v2

    new-array v1, v7, [F

    fill-array-data v1, :array_134

    aput-object v1, v0, v9

    new-array v1, v7, [F

    fill-array-data v1, :array_13e

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    return-void

    nop

    :array_88
    .array-data 4
        0x2
        0x1e5
        0x5
        0x3
        0x375
    .end array-data

    :array_96
    .array-data 4
        0x3
        0x266
        0x7
        0x6
        0x44a
    .end array-data

    :array_a4
    .array-data 4
        0x4
        0x276
        0xb
        0x8
        0x57e
    .end array-data

    :array_b2
    .array-data 4
        0x6
        0x44c
        0x13
        0x9
        0x7f2
    .end array-data

    :array_c0
    .array-data 4
        0x8
        0x866
        0x18
        0xa
        0x9f6
    .end array-data

    :array_ce
    .array-data 4
        0xc
        0x999
        0x1c
        0xe
        0xb29
    .end array-data

    :array_dc
    .array-data 4
        0x10
        0x999
        0x1c
        0xe
        0xb29
    .end array-data

    :array_ea
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f8
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_102
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_10c
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
    .end array-data

    :array_116
    .array-data 4
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
    .end array-data

    :array_120
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_12a
    .array-data 4
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
    .end array-data

    :array_134
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41880000    # 17.0f
    .end array-data

    :array_13e
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicProtectedCount(I)F
    .registers 5

    const/4 v0, 0x0

    .line 92
    :goto_1
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1b

    int-to-float v3, p0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_18

    .line 94
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    aget p0, v1, p0

    return p0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getProtectedCountOnHomeTrigger(I)I
    .registers 4

    const/4 v0, 0x0

    .line 83
    :goto_1
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v1, v2

    if-lez v2, :cond_15

    if-lt v2, p0, :cond_12

    .line 85
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I

    aget p0, v1, p0

    return p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public static getProtectedCountOnLmkdTrigger(I)I
    .registers 4

    const/4 v0, 0x0

    .line 74
    :goto_1
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v1, v2

    if-lez v2, :cond_15

    if-lt v2, p0, :cond_12

    .line 76
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_LMKD:I

    aget p0, v1, p0

    return p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public static getReentry(I)F
    .registers 5

    const/4 v0, 0x0

    .line 101
    :goto_1
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v1, v1, v2

    if-lez v1, :cond_1e

    .line 102
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v1, v1, v0

    aget v2, v1, v2

    int-to-float v3, p0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1b

    .line 103
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    aget p0, v1, p0

    return p0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getTargetFree(I)I
    .registers 4

    const/4 v0, 0x0

    .line 64
    :goto_1
    sget-object v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v1, v2

    if-lez v2, :cond_15

    if-lt v2, p0, :cond_12

    .line 67
    sget p0, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I

    aget p0, v1, p0

    return p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, -0x1

    return p0
.end method
