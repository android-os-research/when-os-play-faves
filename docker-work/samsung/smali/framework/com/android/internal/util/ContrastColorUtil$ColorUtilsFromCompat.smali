.class Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;
.super Ljava/lang/Object;
.source "ContrastColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ContrastColorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorUtilsFromCompat"
.end annotation


# static fields
.field private static final blacklist MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final blacklist MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final blacklist TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final blacklist XYZ_EPSILON:D = 0.008856

.field private static final blacklist XYZ_KAPPA:D = 903.3

.field private static final blacklist XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final blacklist XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final blacklist XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 689
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist HSLToColor([F)I
    .registers 14
    .param p0, "hsl"    # [F

    .line 1014
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1015
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 1016
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 1018
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    .line 1019
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v7, v3, v7

    .line 1020
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 1022
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 1024
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "g":I
    const/4 v10, 0x0

    .line 1026
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_c4

    goto/16 :goto_b1

    .line 1054
    :pswitch_35
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1055
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1056
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_b1

    .line 1048
    :pswitch_4a
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1049
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1050
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1051
    goto :goto_b1

    .line 1043
    :pswitch_5f
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1044
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1045
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1046
    goto :goto_b1

    .line 1038
    :pswitch_74
    mul-float v12, v7, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1039
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1040
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1041
    goto :goto_b1

    .line 1033
    :pswitch_89
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1034
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1035
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1036
    goto :goto_b1

    .line 1028
    :pswitch_9d
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1029
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1030
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1031
    nop

    .line 1060
    :goto_b1
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v8

    .line 1061
    invoke-static {v9, v0, v11}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v9

    .line 1062
    invoke-static {v10, v0, v11}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v0

    .line 1064
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_89
        :pswitch_74
        :pswitch_5f
        :pswitch_4a
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static blacklist LABToColor(DDD)I
    .registers 14
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 972
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v7

    .line 973
    .local v7, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToXYZ(DDD[D)V

    .line 974
    const/4 v0, 0x0

    aget-wide v1, v7, v0

    const/4 v0, 0x1

    aget-wide v3, v7, v0

    const/4 v0, 0x2

    aget-wide v5, v7, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static blacklist LABToXYZ(DDD[D)V
    .registers 30
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "outXyz"    # [D

    .line 915
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 916
    .local v2, "fy":D
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 917
    .local v6, "fx":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 919
    .local v8, "fz":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 920
    .local v12, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_2c

    move-wide/from16 v19, v12

    goto :goto_32

    :cond_2c
    mul-double v19, v6, v4

    sub-double v19, v19, v0

    div-double v19, v19, v17

    .line 921
    .local v19, "xr":D
    :goto_32
    const-wide v21, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v16, p0, v21

    if-lez v16, :cond_40

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    goto :goto_42

    :cond_40
    div-double v21, p0, v17

    .line 923
    .local v21, "yr":D
    :goto_42
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 924
    .end local v12    # "tmp":D
    .local v10, "tmp":D
    cmpl-double v12, v10, v14

    if-lez v12, :cond_4c

    move-wide v4, v10

    goto :goto_50

    :cond_4c
    mul-double/2addr v4, v8

    sub-double/2addr v4, v0

    div-double v4, v4, v17

    :goto_50
    move-wide v0, v4

    .line 926
    .local v0, "zr":D
    const/4 v4, 0x0

    const-wide v12, 0x4057c3020c49ba5eL    # 95.047

    mul-double v12, v12, v19

    aput-wide v12, p6, v4

    .line 927
    const/4 v4, 0x1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v21

    aput-wide v12, p6, v4

    .line 928
    const/4 v4, 0x2

    const-wide v12, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v12, v0

    aput-wide v12, p6, v4

    .line 929
    return-void
.end method

.method public static blacklist RGBToHSL(III[F)V
    .registers 20
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHsl"    # [F

    .line 1098
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 1099
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1100
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 1102
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1103
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1104
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 1107
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1109
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_2f

    .line 1111
    move v10, v13

    .local v10, "s":F
    move v11, v13

    .local v11, "h":F
    goto :goto_53

    .line 1113
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_2f
    cmpl-float v11, v2, v1

    if-nez v11, :cond_3a

    .line 1114
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .restart local v11    # "h":F
    goto :goto_49

    .line 1115
    .end local v11    # "h":F
    :cond_3a
    cmpl-float v11, v2, v4

    if-nez v11, :cond_43

    .line 1116
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    .restart local v11    # "h":F
    goto :goto_49

    .line 1118
    .end local v11    # "h":F
    :cond_43
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 1121
    .restart local v11    # "h":F
    :goto_49
    mul-float/2addr v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 1124
    .restart local v10    # "s":F
    :goto_53
    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v14, v11

    const/high16 v15, 0x43b40000    # 360.0f

    rem-float/2addr v14, v15

    .line 1125
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_5e

    .line 1126
    add-float/2addr v14, v15

    .line 1129
    :cond_5e
    const/4 v11, 0x0

    invoke-static {v14, v13, v15}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 1130
    const/4 v11, 0x1

    invoke-static {v10, v13, v12}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 1131
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 1132
    return-void
.end method

.method public static blacklist RGBToLAB(III[D)V
    .registers 12
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [D

    .line 801
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    .line 803
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v0, 0x1

    aget-wide v3, p3, v0

    const/4 v0, 0x2

    aget-wide v5, p3, v0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->XYZToLAB(DDD[D)V

    .line 805
    return-void
.end method

.method public static blacklist RGBToXYZ(III[D)V
    .registers 25
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    .line 846
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_bf

    .line 850
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 851
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    if-gez v8, :cond_2f

    div-double v17, v2, v9

    goto :goto_37

    :cond_2f
    add-double v17, v2, v15

    div-double v9, v17, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_37
    move-wide/from16 v2, v17

    .line 852
    move/from16 v8, p1

    int-to-double v9, v8

    div-double/2addr v9, v4

    .line 853
    .local v9, "sg":D
    cmpg-double v17, v9, v6

    if-gez v17, :cond_4b

    const-wide v17, 0x4029d70a3d70a3d7L    # 12.92

    div-double v19, v9, v17

    move-wide/from16 v6, v19

    goto :goto_53

    :cond_4b
    add-double v17, v9, v15

    div-double v6, v17, v13

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 854
    .end local v9    # "sg":D
    .local v6, "sg":D
    :goto_53
    move/from16 v9, p2

    int-to-double v11, v9

    div-double/2addr v11, v4

    .line 855
    .local v11, "sb":D
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v11, v4

    if-gez v4, :cond_68

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double v4, v11, v4

    goto :goto_74

    :cond_68
    add-double/2addr v15, v11

    div-double v4, v15, v13

    const-wide v13, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 857
    .end local v11    # "sb":D
    .local v4, "sb":D
    :goto_74
    const/4 v10, 0x0

    const-wide v11, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v11, v2

    const-wide v13, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v13, v6

    add-double/2addr v11, v13

    const-wide v13, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 858
    const/4 v10, 0x1

    const-wide v11, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v11, v2

    const-wide v15, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    const-wide v15, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v15, v4

    add-double/2addr v11, v15

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 859
    const/4 v10, 0x2

    const-wide v11, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v11, v2

    const-wide v15, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v15, v6

    add-double/2addr v11, v15

    const-wide v15, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v15, v4

    add-double/2addr v11, v15

    mul-double/2addr v11, v13

    aput-wide v11, v0, v10

    .line 860
    return-void

    .line 847
    .end local v2    # "sr":D
    .end local v4    # "sb":D
    .end local v6    # "sg":D
    :cond_bf
    move/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "outXyz must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist XYZToColor(DDD)I
    .registers 25
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 946
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 947
    .local v0, "r":D
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 948
    .local v4, "g":D
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L    # -0.204

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    .line 950
    .local v6, "b":D
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_70

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v13

    sub-double v17, v17, v9

    goto :goto_72

    :cond_70
    mul-double v17, v0, v15

    :goto_72
    move-wide/from16 v0, v17

    .line 951
    cmpl-double v8, v4, v2

    if-lez v8, :cond_81

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    mul-double v17, v17, v13

    sub-double v17, v17, v9

    goto :goto_83

    :cond_81
    mul-double v17, v4, v15

    :goto_83
    move-wide/from16 v4, v17

    .line 952
    cmpl-double v2, v6, v2

    if-lez v2, :cond_90

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_92

    :cond_90
    mul-double v2, v6, v15

    .line 954
    .end local v6    # "b":D
    .local v2, "b":D
    :goto_92
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double v8, v0, v6

    .line 955
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    const/16 v10, 0xff

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v8

    mul-double v11, v4, v6

    .line 956
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11, v9, v10}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v11

    mul-double/2addr v6, v2

    .line 957
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6, v9, v10}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v6

    .line 954
    invoke-static {v8, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    return v6
.end method

.method public static blacklist XYZToLAB(DDD[D)V
    .registers 14
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "outLab"    # [D

    .line 883
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    .line 886
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 887
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 888
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 889
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double/2addr v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    .line 890
    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double v3, p0, p2

    mul-double/2addr v3, v1

    aput-wide v3, p6, v0

    .line 891
    const/4 v0, 0x2

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    sub-double v3, p2, p4

    mul-double/2addr v3, v1

    aput-wide v3, p6, v0

    .line 892
    return-void

    .line 884
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist calculateContrast(II)D
    .registers 10
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 761
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_c

    .line 763
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result p0

    .line 766
    :cond_c
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 767
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 770
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 6
    .param p0, "color"    # I

    .line 738
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 739
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToXYZ(I[D)V

    .line 741
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist colorToHSL(I[F)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outHsl"    # [F

    .line 1079
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->RGBToHSL(III[F)V

    .line 1080
    return-void
.end method

.method public static blacklist colorToLAB(I[D)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outLab"    # [D

    .line 780
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->RGBToLAB(III[D)V

    .line 781
    return-void
.end method

.method public static blacklist colorToXYZ(I[D)V
    .registers 5
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    .line 823
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    .line 824
    return-void
.end method

.method private static blacklist compositeAlpha(II)I
    .registers 4
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 712
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static blacklist compositeColors(II)I
    .registers 9
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 697
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 698
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 699
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeAlpha(II)I

    move-result v2

    .line 701
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 702
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 701
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v3

    .line 703
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 704
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 703
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v4

    .line 705
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 706
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 705
    invoke-static {v5, v1, v6, v0, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v5

    .line 708
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static blacklist compositeComponent(IIIII)I
    .registers 8
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 716
    if-nez p4, :cond_4

    const/4 v0, 0x0

    return v0

    .line 717
    :cond_4
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static blacklist constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 982
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private static blacklist constrain(III)I
    .registers 4
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 978
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static blacklist getTempDouble3Array()[D
    .registers 3

    .line 992
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 993
    .local v1, "result":[D
    if-nez v1, :cond_10

    .line 994
    const/4 v2, 0x3

    new-array v1, v2, [D

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 997
    :cond_10
    return-object v1
.end method

.method private static blacklist pivotXyzComponent(D)D
    .registers 6
    .param p0, "component"    # D

    .line 986
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    .line 987
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1f

    .line 988
    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 986
    :goto_1f
    return-wide v0
.end method

.method public static blacklist setAlphaComponent(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 726
    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    .line 729
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 727
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
