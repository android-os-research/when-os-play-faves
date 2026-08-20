.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field public static final DEUTAN:I = 0x1

.field public static final Deutan_severity:[D

.field public static final Deutan_userParameter:[D

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field public static final MAX:I = 0x0

.field public static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field public static final MIN:I = 0x1

.field public static final PROTAN:I = 0x0

.field public static final Protan_severity:[D

.field public static final Protan_userParameter:[D

.field public static final RED:I = 0x1

.field public static final TRITAN:I = 0x2

.field public static final Tritan_severity:[D

.field public static final Tritan_userParameter:[D

.field public static final YELLOW:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x19

    new-array v1, v0, [D

    .line 78
    fill-array-data v1, :array_2e

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v1, v0, [D

    .line 79
    fill-array-data v1, :array_96

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v1, v0, [D

    .line 81
    fill-array-data v1, :array_fe

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v1, v0, [D

    .line 82
    fill-array-data v1, :array_166

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v1, v0, [D

    .line 85
    fill-array-data v1, :array_1ce

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v0, [D

    .line 86
    fill-array-data v0, :array_236

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_2e
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_96
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_fe
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_166
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1ce
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_236
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .registers 19

    move v0, p1

    move v1, p2

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2e

    if-ne v1, v4, :cond_14

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 121
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_14
    if-ne v1, v3, :cond_21

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 124
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_21
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 127
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_2e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_58

    if-ne v1, v4, :cond_3e

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 133
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_3e
    if-ne v1, v3, :cond_4b

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 136
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_4b
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 139
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_58
    if-ne v0, v3, :cond_81

    if-ne v1, v4, :cond_67

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 145
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_67
    if-ne v1, v3, :cond_74

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 148
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_74
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 151
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_81
    const/4 v6, 0x4

    if-ne v0, v6, :cond_ab

    if-ne v1, v4, :cond_91

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 157
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_91
    if-ne v1, v3, :cond_9e

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 160
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_9e
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 163
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_ab
    if-ne v0, v2, :cond_d1

    if-ne v1, v4, :cond_b9

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 169
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_b9
    if-ne v1, v3, :cond_c5

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 172
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_c5
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 175
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_d1
    const/4 v6, 0x6

    if-ne v0, v6, :cond_fa

    if-ne v1, v4, :cond_e0

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 181
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_e0
    if-ne v1, v3, :cond_ec

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 184
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_ec
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 187
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_f8
    const/4 v0, 0x0

    goto :goto_ff

    :cond_fa
    new-array v0, v5, [I

    .line 192
    fill-array-data v0, :array_124

    :goto_ff
    const/4 v1, -0x1

    if-eqz v0, :cond_122

    const/4 v2, 0x0

    .line 198
    aget v2, v0, v2

    if-ne v2, v1, :cond_10c

    aget v3, v0, v4

    if-ne v3, v1, :cond_10c

    goto :goto_122

    .line 203
    :cond_10c
    aget v1, v0, v4

    sub-int/2addr v2, v1

    move-object v1, p0

    move-wide/from16 v5, p6

    .line 206
    invoke-virtual {p0, v5, v6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    int-to-double v2, v2

    int-to-double v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    mul-double/2addr v2, v5

    .line 210
    aget v0, v0, v4

    int-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    return v0

    :cond_122
    :goto_122
    return v1

    nop

    :array_124
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .registers 19

    move v0, p1

    move v1, p2

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2e

    if-ne v1, v4, :cond_14

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3351
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_14
    if-ne v1, v3, :cond_21

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3354
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_21
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3357
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_2e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_58

    if-ne v1, v4, :cond_3e

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3363
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_3e
    if-ne v1, v3, :cond_4b

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3366
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_4b
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3369
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_58
    if-ne v0, v3, :cond_81

    if-ne v1, v4, :cond_67

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3375
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_67
    if-ne v1, v3, :cond_74

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3378
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_74
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3381
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_81
    const/4 v6, 0x4

    if-ne v0, v6, :cond_ab

    if-ne v1, v4, :cond_91

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3387
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_91
    if-ne v1, v3, :cond_9e

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3390
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_9e
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3393
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v0

    goto/16 :goto_ff

    :cond_ab
    if-ne v0, v2, :cond_d1

    if-ne v1, v4, :cond_b9

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3399
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_b9
    if-ne v1, v3, :cond_c5

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3402
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_c5
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3405
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_d1
    const/4 v6, 0x6

    if-ne v0, v6, :cond_fa

    if-ne v1, v4, :cond_e0

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3411
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_e0
    if-ne v1, v3, :cond_ec

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3414
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_ec
    if-ne v1, v2, :cond_f8

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 3417
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v0

    goto :goto_ff

    :cond_f8
    const/4 v0, 0x0

    goto :goto_ff

    :cond_fa
    new-array v0, v5, [I

    .line 3422
    fill-array-data v0, :array_124

    :goto_ff
    const/4 v1, -0x1

    if-eqz v0, :cond_122

    const/4 v2, 0x0

    .line 3428
    aget v2, v0, v2

    if-ne v2, v1, :cond_10c

    aget v3, v0, v4

    if-ne v3, v1, :cond_10c

    goto :goto_122

    .line 3433
    :cond_10c
    aget v1, v0, v4

    sub-int/2addr v2, v1

    move-object v1, p0

    move-wide/from16 v5, p6

    .line 3436
    invoke-virtual {p0, v5, v6}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v1

    int-to-double v2, v2

    int-to-double v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    mul-double/2addr v2, v5

    .line 3440
    aget v0, v0, v4

    int-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    return v0

    :cond_122
    :goto_122
    return v1

    nop

    :array_124
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .registers 9

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 3162
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/16 v2, 0xfe

    if-nez p1, :cond_1d

    packed-switch p0, :pswitch_data_38

    move p2, v0

    :goto_14
    move v2, p2

    goto :goto_1a

    :pswitch_16
    move p2, v2

    goto :goto_1a

    :pswitch_18
    move p2, v1

    goto :goto_14

    :goto_1a
    move p0, p2

    move p2, v2

    goto :goto_33

    :cond_1d
    if-ne p1, p3, :cond_26

    packed-switch p0, :pswitch_data_52

    move p2, v0

    goto :goto_14

    :pswitch_24
    move p2, v1

    goto :goto_14

    :cond_26
    if-ne p1, p4, :cond_32

    packed-switch p0, :pswitch_data_6c

    move p2, v0

    move v1, p2

    goto :goto_2f

    :pswitch_2e
    move p2, v1

    :goto_2f
    move p0, p2

    move p2, v1

    goto :goto_33

    :cond_32
    move p0, p2

    :goto_33
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_24
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .registers 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 6392
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/16 v2, 0xff

    const/16 v3, 0xfe

    if-nez p1, :cond_2c

    const/16 p1, 0xc9

    const/16 p2, 0xca

    packed-switch p0, :pswitch_data_62

    move p2, v0

    :goto_1a
    move v3, p2

    goto :goto_29

    :pswitch_1c
    move p2, v3

    goto :goto_29

    :pswitch_1e
    move v3, p1

    goto :goto_25

    :pswitch_20
    move v3, p2

    goto :goto_25

    :pswitch_22
    const/16 p0, 0xcb

    move v3, p0

    :goto_25
    move p2, v1

    goto :goto_29

    :pswitch_27
    move p2, v2

    goto :goto_1a

    :goto_29
    move p0, p2

    move p2, v3

    goto :goto_5d

    :cond_2c
    if-ne p1, p3, :cond_3f

    const/16 p1, 0xce

    const/16 p2, 0xcd

    packed-switch p0, :pswitch_data_7c

    move p2, v0

    goto :goto_1a

    :pswitch_37
    move v3, p1

    goto :goto_25

    :pswitch_39
    move v3, p2

    goto :goto_25

    :pswitch_3b
    move p2, v1

    goto :goto_1a

    :pswitch_3d
    move p2, v2

    goto :goto_1a

    :cond_3f
    if-ne p1, p4, :cond_5c

    packed-switch p0, :pswitch_data_96

    move p2, v0

    move v2, p2

    goto :goto_59

    :pswitch_47
    const/16 p0, 0xf4

    goto :goto_55

    :pswitch_4a
    const/16 p0, 0xed

    goto :goto_55

    :pswitch_4d
    const/16 p0, 0xe7

    goto :goto_55

    :pswitch_50
    const/16 p0, 0xe1

    goto :goto_55

    :pswitch_53
    const/16 p0, 0xda

    :goto_55
    move v2, p0

    move p2, v1

    goto :goto_59

    :pswitch_58
    move p2, v2

    :goto_59
    move p0, p2

    move p2, v2

    goto :goto_5d

    :cond_5c
    move p0, p2

    :goto_5d
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_27
        :pswitch_22
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_37
        :pswitch_37
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_58
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2990
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_f

    move p0, p3

    move p2, p0

    goto :goto_44

    :cond_f
    if-ne p1, v0, :cond_1d

    packed-switch p0, :pswitch_data_4a

    :pswitch_14
    move p0, p3

    :goto_15
    move p2, p0

    goto :goto_19

    :pswitch_17
    move p0, v0

    goto :goto_15

    :goto_19
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_44

    :cond_1d
    if-ne p1, p4, :cond_43

    packed-switch p0, :pswitch_data_64

    :pswitch_22
    move p2, p3

    goto :goto_41

    :pswitch_24
    const/16 p0, 0x47

    goto :goto_40

    :pswitch_27
    const/16 p0, 0x3d

    goto :goto_40

    :pswitch_2a
    const/16 p0, 0x33

    goto :goto_40

    :pswitch_2d
    const/16 p0, 0x29

    goto :goto_40

    :pswitch_30
    const/16 p0, 0x20

    goto :goto_40

    :pswitch_33
    const/16 p0, 0x1a

    goto :goto_40

    :pswitch_36
    const/16 p0, 0x15

    goto :goto_40

    :pswitch_39
    const/16 p0, 0x10

    goto :goto_40

    :pswitch_3c
    const/16 p0, 0xc

    goto :goto_40

    :pswitch_3f
    const/4 p0, 0x6

    :goto_40
    move p2, p0

    :goto_41
    move p0, p3

    goto :goto_44

    :cond_43
    move p0, p2

    :goto_44
    aput p2, p5, p3

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_22
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 6220
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    move p0, v0

    move p2, p0

    goto :goto_36

    :cond_f
    if-ne p1, p3, :cond_1d

    packed-switch p0, :pswitch_data_3c

    :pswitch_14
    move p0, v0

    :goto_15
    move p2, p0

    goto :goto_19

    :pswitch_17
    move p0, p3

    goto :goto_15

    :goto_19
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_36

    :cond_1d
    if-ne p1, p4, :cond_35

    packed-switch p0, :pswitch_data_56

    :pswitch_22
    move p2, v0

    goto :goto_33

    :pswitch_24
    const/16 p0, 0x47

    goto :goto_32

    :pswitch_27
    const/16 p0, 0x3d

    goto :goto_32

    :pswitch_2a
    const/16 p0, 0x33

    goto :goto_32

    :pswitch_2d
    const/16 p0, 0x29

    goto :goto_32

    :pswitch_30
    const/16 p0, 0x20

    :goto_32
    move p2, p0

    :goto_33
    move p0, v0

    goto :goto_36

    :cond_35
    move p0, p2

    :goto_36
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2818
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_50

    :pswitch_f
    move p0, p3

    :goto_10
    move p2, p0

    goto :goto_14

    :pswitch_12
    move p0, v0

    goto :goto_10

    :goto_14
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_4a

    :cond_18
    if-ne p1, v0, :cond_1d

    move p0, p3

    move p2, p0

    goto :goto_4a

    :cond_1d
    if-ne p1, p4, :cond_49

    const/16 p1, 0x29

    const/16 p2, 0x20

    packed-switch p0, :pswitch_data_6a

    :pswitch_26
    move p0, p3

    goto :goto_10

    :pswitch_28
    const/16 p0, 0x2f

    const/16 p1, 0x76

    move p2, p0

    move p0, p1

    goto :goto_14

    :pswitch_2f
    const/16 p0, 0x66

    move p2, p1

    goto :goto_14

    :pswitch_33
    const/16 p0, 0x53

    goto :goto_14

    :pswitch_36
    move p0, p1

    goto :goto_47

    :pswitch_38
    move p0, p2

    goto :goto_47

    :pswitch_3a
    const/16 p0, 0x1a

    goto :goto_47

    :pswitch_3d
    const/16 p0, 0x15

    goto :goto_47

    :pswitch_40
    const/16 p0, 0x10

    goto :goto_47

    :pswitch_43
    const/16 p0, 0xc

    goto :goto_47

    :pswitch_46
    const/4 p0, 0x6

    :goto_47
    move p2, p3

    goto :goto_14

    :cond_49
    move p0, p2

    :goto_4a
    aput p2, p5, p3

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_38
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .registers 11

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 6048
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/16 p3, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_29

    packed-switch p0, :pswitch_data_72

    :pswitch_11
    move p0, v1

    :goto_12
    move p2, p0

    goto :goto_24

    :pswitch_14
    move p0, v0

    goto :goto_12

    :pswitch_16
    const/16 p0, 0x27

    goto :goto_23

    :pswitch_19
    const/16 p0, 0x1e

    goto :goto_23

    :pswitch_1c
    const/16 p0, 0x16

    goto :goto_23

    :pswitch_1f
    const/16 p0, 0xf

    goto :goto_23

    :pswitch_22
    move p0, p3

    :goto_23
    move p2, v1

    :goto_24
    move v4, p2

    move p2, p0

    move p0, v4

    goto/16 :goto_6c

    :cond_29
    const/16 v2, 0x29

    const/16 v3, 0x20

    if-ne p1, v0, :cond_43

    packed-switch p0, :pswitch_data_8c

    :pswitch_32
    move p2, v1

    goto :goto_41

    :pswitch_34
    move p2, v2

    goto :goto_41

    :pswitch_36
    move p2, v3

    goto :goto_41

    :pswitch_38
    const/16 p0, 0x18

    goto :goto_40

    :pswitch_3b
    const/16 p0, 0x11

    goto :goto_40

    :pswitch_3e
    const/16 p0, 0xb

    :goto_40
    move p2, p0

    :goto_41
    move p0, v1

    goto :goto_6c

    :cond_43
    if-ne p1, p4, :cond_6b

    packed-switch p0, :pswitch_data_a6

    :pswitch_48
    move p0, v1

    goto :goto_12

    :pswitch_4a
    const/16 p0, 0x2f

    const/16 p1, 0x76

    move p2, p0

    move p0, p1

    goto :goto_24

    :pswitch_51
    const/16 p0, 0x66

    move p2, v2

    goto :goto_24

    :pswitch_55
    const/16 p0, 0x53

    move p2, v3

    goto :goto_24

    :pswitch_59
    move p2, v1

    move p0, v2

    goto :goto_24

    :pswitch_5c
    move p2, v1

    move p0, v3

    goto :goto_24

    :pswitch_5f
    const/16 p0, 0xa

    goto :goto_23

    :pswitch_62
    move p0, p3

    goto :goto_23

    :pswitch_64
    const/16 p0, 0x8

    goto :goto_23

    :pswitch_67
    const/4 p0, 0x6

    goto :goto_23

    :pswitch_69
    const/4 p0, 0x4

    goto :goto_23

    :cond_6b
    move p0, p2

    :goto_6c
    aput p2, p5, v1

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_11
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_48
        :pswitch_69
        :pswitch_67
        :pswitch_64
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4a
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2646
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_2a

    :goto_11
    move p2, v0

    move v1, p2

    goto :goto_15

    :pswitch_14
    move p2, v1

    :goto_15
    move p0, p2

    move p2, v1

    goto :goto_25

    :cond_18
    if-ne p1, p3, :cond_1e

    packed-switch p0, :pswitch_data_44

    goto :goto_11

    :cond_1e
    if-ne p1, p4, :cond_24

    packed-switch p0, :pswitch_data_5e

    goto :goto_11

    :cond_24
    move p0, p2

    :goto_25
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .registers 11

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5876
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/16 p3, 0xcb

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xca

    const/16 v3, 0xcc

    const/16 v4, 0xff

    if-nez p1, :cond_23

    packed-switch p0, :pswitch_data_4a

    :goto_17
    move p2, v1

    move v4, p2

    goto :goto_20

    :pswitch_1a
    move v4, v2

    goto :goto_1d

    :pswitch_1c
    move v4, p3

    :goto_1d
    move p2, v3

    goto :goto_20

    :pswitch_1f
    move p2, v4

    :goto_20
    move p0, p2

    move p2, v4

    goto :goto_44

    :cond_23
    if-ne p1, v0, :cond_35

    const/16 p1, 0xc9

    packed-switch p0, :pswitch_data_64

    goto :goto_17

    :pswitch_2b
    const/16 p0, 0xc8

    move v4, p0

    goto :goto_1d

    :pswitch_2f
    move v4, p1

    goto :goto_1d

    :pswitch_31
    move v4, v2

    goto :goto_1d

    :pswitch_33
    move v4, p3

    goto :goto_1d

    :cond_35
    if-ne p1, p4, :cond_43

    const/16 p1, 0xce

    packed-switch p0, :pswitch_data_7e

    goto :goto_17

    :pswitch_3d
    move v4, p1

    goto :goto_1d

    :pswitch_3f
    const/16 p0, 0xcd

    move v4, p0

    goto :goto_1d

    :cond_43
    move p0, p2

    :goto_44
    aput p2, p5, v1

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3f
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2474
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_34

    :goto_11
    move p2, v0

    move v1, p2

    goto :goto_15

    :pswitch_14
    move p2, v1

    :goto_15
    move p0, p2

    move p2, v1

    goto :goto_2e

    :cond_18
    if-ne p1, p3, :cond_27

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_4e

    move p1, v0

    :goto_20
    :pswitch_20
    move p2, p1

    goto :goto_24

    :pswitch_22
    move p1, v1

    goto :goto_20

    :goto_24
    move p0, p2

    move p2, p1

    goto :goto_2e

    :cond_27
    if-ne p1, p4, :cond_2d

    packed-switch p0, :pswitch_data_68

    goto :goto_11

    :cond_2d
    move p0, p2

    :goto_2e
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .registers 11

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5704
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/16 v0, 0xd3

    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0xff

    if-nez p1, :cond_2f

    const/16 p1, 0xe6

    packed-switch p0, :pswitch_data_68

    :goto_17
    move p2, v1

    move v3, p2

    goto :goto_2c

    :pswitch_1a
    const/16 p0, 0xcf

    move p2, p0

    move v3, p1

    goto :goto_2c

    :pswitch_1f
    move v3, p1

    goto :goto_29

    :pswitch_21
    const/16 p0, 0xe1

    goto :goto_26

    :pswitch_24
    const/16 p0, 0xd7

    :goto_26
    move v3, p0

    goto :goto_29

    :pswitch_28
    move v3, v0

    :goto_29
    move p2, v2

    goto :goto_2c

    :pswitch_2b
    move p2, v3

    :goto_2c
    move p0, p2

    move p2, v3

    goto :goto_62

    :cond_2f
    if-ne p1, p3, :cond_51

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_82

    move p0, v1

    :goto_37
    move p2, p0

    goto :goto_4d

    :pswitch_39
    move p0, p1

    goto :goto_37

    :pswitch_3b
    const/16 p0, 0xfd

    goto :goto_49

    :pswitch_3e
    const/16 p0, 0xf2

    goto :goto_49

    :pswitch_41
    const/16 p0, 0xe8

    goto :goto_49

    :pswitch_44
    const/16 p0, 0xe0

    goto :goto_49

    :pswitch_47
    const/16 p0, 0xd8

    :goto_49
    move p2, v2

    goto :goto_4d

    :pswitch_4b
    move p0, v3

    goto :goto_37

    :goto_4d
    move v4, p2

    move p2, p0

    move p0, v4

    goto :goto_62

    :cond_51
    if-ne p1, p4, :cond_61

    const/16 p1, 0xd2

    packed-switch p0, :pswitch_data_9c

    goto :goto_17

    :pswitch_59
    move v3, v0

    goto :goto_29

    :pswitch_5b
    move v3, p1

    goto :goto_29

    :pswitch_5d
    const/16 p0, 0xd0

    move v3, p0

    goto :goto_29

    :cond_61
    move p0, p2

    :goto_62
    aput p2, p5, v1

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1f
        :pswitch_1a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_5d
        :pswitch_5b
        :pswitch_59
        :pswitch_59
        :pswitch_5b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2302
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_26

    :pswitch_f
    move p0, p3

    :goto_10
    move p2, p0

    goto :goto_14

    :pswitch_12
    move p0, v0

    goto :goto_10

    :goto_14
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_21

    :cond_18
    if-ne p1, v0, :cond_1d

    :goto_1a
    move p0, p3

    move p2, p0

    goto :goto_21

    :cond_1d
    if-ne p1, p4, :cond_20

    goto :goto_1a

    :cond_20
    move p0, p2

    :goto_21
    aput p2, p5, p3

    aput p0, p5, v0

    return-object p5

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5532
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_26

    :pswitch_f
    move p0, v0

    :goto_10
    move p2, p0

    goto :goto_14

    :pswitch_12
    move p0, p3

    goto :goto_10

    :goto_14
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_21

    :cond_18
    if-ne p1, p3, :cond_1d

    :goto_1a
    move p0, v0

    move p2, p0

    goto :goto_21

    :cond_1d
    if-ne p1, p4, :cond_20

    goto :goto_1a

    :cond_20
    move p0, p2

    :goto_21
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .registers 14

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 1097
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/16 v0, 0x55

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-nez p1, :cond_3b

    const/16 p1, 0x73

    const/16 p2, 0x6d

    const/16 p4, 0x67

    const/16 v3, 0x5d

    const/16 v4, 0x4b

    const/16 v5, 0x3f

    const/16 v6, 0x33

    const/16 v7, 0x25

    packed-switch p0, :pswitch_data_6e

    :pswitch_23
    move p1, v2

    :goto_24
    :pswitch_24
    move p2, p1

    goto :goto_38

    :pswitch_26
    move p1, p2

    goto :goto_38

    :pswitch_28
    move p1, p4

    goto :goto_24

    :pswitch_2a
    move p1, v3

    goto :goto_24

    :pswitch_2c
    move p1, v0

    goto :goto_24

    :pswitch_2e
    move p1, v4

    goto :goto_24

    :pswitch_30
    move p1, v5

    goto :goto_24

    :pswitch_32
    move p1, v6

    goto :goto_24

    :pswitch_34
    move p1, v7

    goto :goto_24

    :pswitch_36
    move p1, v1

    goto :goto_24

    :goto_38
    move p0, p2

    move p2, p1

    goto :goto_68

    :cond_3b
    if-ne p1, p3, :cond_62

    const/16 p1, 0x5e

    const/16 p2, 0x59

    const/16 p4, 0x4f

    const/16 v3, 0x49

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x2f

    const/16 v7, 0x23

    packed-switch p0, :pswitch_data_88

    :pswitch_50
    move p1, v2

    goto :goto_24

    :pswitch_52
    move p1, v0

    goto :goto_24

    :pswitch_54
    move p1, p4

    goto :goto_24

    :pswitch_56
    move p1, v3

    goto :goto_24

    :pswitch_58
    move p1, v4

    goto :goto_24

    :pswitch_5a
    move p1, v5

    goto :goto_24

    :pswitch_5c
    move p1, v6

    goto :goto_24

    :pswitch_5e
    move p1, v7

    goto :goto_24

    :pswitch_60
    move p1, v1

    goto :goto_24

    :cond_62
    if-ne p1, p4, :cond_67

    move p0, v2

    move p2, p0

    goto :goto_68

    :cond_67
    move p0, p2

    :goto_68
    aput p2, p5, v2

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_50
        :pswitch_60
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
        :pswitch_58
        :pswitch_56
        :pswitch_54
        :pswitch_52
        :pswitch_26
        :pswitch_24
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .registers 9

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 4327
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/16 v0, 0x55

    const/4 v1, 0x0

    if-nez p1, :cond_27

    const/16 p1, 0x73

    const/16 p2, 0x6d

    const/16 p4, 0x67

    const/16 v2, 0x5d

    packed-switch p0, :pswitch_data_48

    :pswitch_19
    move p1, v1

    :goto_1a
    :pswitch_1a
    move p2, p1

    goto :goto_24

    :pswitch_1c
    move p1, p2

    goto :goto_24

    :pswitch_1e
    move p1, p4

    goto :goto_1a

    :pswitch_20
    move p1, v2

    goto :goto_1a

    :pswitch_22
    move p1, v0

    goto :goto_1a

    :goto_24
    move p0, p2

    move p2, p1

    goto :goto_42

    :cond_27
    if-ne p1, p3, :cond_3c

    const/16 p1, 0x5e

    const/16 p2, 0x59

    const/16 p4, 0x4f

    const/16 v2, 0x49

    packed-switch p0, :pswitch_data_62

    :pswitch_34
    move p1, v1

    goto :goto_1a

    :pswitch_36
    move p1, v0

    goto :goto_1a

    :pswitch_38
    move p1, p4

    goto :goto_1a

    :pswitch_3a
    move p1, v2

    goto :goto_1a

    :cond_3c
    if-ne p1, p4, :cond_41

    move p0, v1

    move p2, p0

    goto :goto_42

    :cond_41
    move p0, p2

    :goto_42
    aput p2, p5, v1

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_38
        :pswitch_36
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .registers 9

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 925
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/16 v2, 0xff

    if-nez p1, :cond_1c

    packed-switch p0, :pswitch_data_38

    move p2, v0

    :goto_14
    move v2, p2

    goto :goto_19

    :pswitch_16
    move p2, v1

    goto :goto_14

    :pswitch_18
    move p2, v2

    :goto_19
    move p0, p2

    move p2, v2

    goto :goto_33

    :cond_1c
    if-ne p1, p3, :cond_2b

    packed-switch p0, :pswitch_data_52

    move p2, v0

    :goto_22
    move v1, p2

    goto :goto_28

    :pswitch_24
    move p2, v1

    goto :goto_28

    :pswitch_26
    move p2, v2

    goto :goto_22

    :goto_28
    move p0, p2

    move p2, v1

    goto :goto_33

    :cond_2b
    if-ne p1, p4, :cond_32

    packed-switch p0, :pswitch_data_6c

    move p2, v0

    goto :goto_14

    :cond_32
    move p0, p2

    :goto_33
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .registers 11

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 4155
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/16 v2, 0xcc

    const/16 v3, 0xff

    if-nez p1, :cond_31

    packed-switch p0, :pswitch_data_72

    move p0, v0

    :goto_16
    move p2, p0

    goto :goto_2c

    :pswitch_18
    move p0, v1

    goto :goto_16

    :pswitch_1a
    const/16 p0, 0xf3

    goto :goto_28

    :pswitch_1d
    const/16 p0, 0xeb

    goto :goto_28

    :pswitch_20
    const/16 p0, 0xe3

    goto :goto_28

    :pswitch_23
    const/16 p0, 0xdd

    goto :goto_28

    :pswitch_26
    const/16 p0, 0xd6

    :goto_28
    move p2, v2

    goto :goto_2c

    :pswitch_2a
    move p0, v3

    goto :goto_16

    :goto_2c
    move v4, p2

    move p2, p0

    move p0, v4

    goto/16 :goto_6d

    :cond_31
    if-ne p1, p3, :cond_51

    packed-switch p0, :pswitch_data_8c

    move p2, v0

    :goto_37
    move v1, p2

    goto :goto_4e

    :pswitch_39
    move p2, v1

    goto :goto_4e

    :pswitch_3b
    move p2, v2

    move v1, v3

    goto :goto_4e

    :pswitch_3e
    const/16 p0, 0xfb

    goto :goto_49

    :pswitch_41
    const/16 p0, 0xef

    goto :goto_49

    :pswitch_44
    const/16 p0, 0xe5

    goto :goto_49

    :pswitch_47
    const/16 p0, 0xdc

    :goto_49
    move v1, p0

    move p2, v2

    goto :goto_4e

    :pswitch_4c
    move p2, v3

    goto :goto_37

    :goto_4e
    move p0, p2

    move p2, v1

    goto :goto_6d

    :cond_51
    if-ne p1, p4, :cond_6c

    const/16 p1, 0xda

    packed-switch p0, :pswitch_data_a6

    move p2, v0

    move v3, p2

    goto :goto_69

    :pswitch_5b
    move v3, p1

    goto :goto_66

    :pswitch_5d
    const/16 p0, 0xd9

    goto :goto_65

    :pswitch_60
    const/16 p0, 0xd7

    goto :goto_65

    :pswitch_63
    const/16 p0, 0xd4

    :goto_65
    move v3, p0

    :goto_66
    move p2, v2

    goto :goto_69

    :pswitch_68
    move p2, v3

    :goto_69
    move p0, p2

    move p2, v3

    goto :goto_6d

    :cond_6c
    move p0, p2

    :goto_6d
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_2a
        :pswitch_18
        :pswitch_18
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_68
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5b
        :pswitch_5b
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .registers 11

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 753
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_48

    :pswitch_f
    move p0, v0

    :goto_10
    move p2, p0

    goto :goto_14

    :pswitch_12
    move p0, p3

    goto :goto_10

    :goto_14
    move v4, p2

    move p2, p0

    move p0, v4

    goto :goto_43

    :cond_18
    if-ne p1, p3, :cond_21

    packed-switch p0, :pswitch_data_62

    :pswitch_1d
    move p0, v0

    goto :goto_10

    :pswitch_1f
    move p0, p3

    goto :goto_10

    :cond_21
    if-ne p1, p4, :cond_42

    const/16 p1, 0x51

    const/16 p2, 0x49

    const/16 p4, 0x3f

    const/16 v1, 0x33

    const/16 v2, 0x26

    const/16 v3, 0x15

    packed-switch p0, :pswitch_data_7c

    :pswitch_32
    move p1, v0

    :goto_33
    :pswitch_33
    move p2, p1

    goto :goto_3f

    :pswitch_35
    move p1, p2

    goto :goto_3f

    :pswitch_37
    move p1, p4

    goto :goto_33

    :pswitch_39
    move p1, v1

    goto :goto_33

    :pswitch_3b
    move p1, v2

    goto :goto_33

    :pswitch_3d
    move p1, v3

    goto :goto_33

    :goto_3f
    move p0, p2

    move p2, p1

    goto :goto_43

    :cond_42
    move p0, p2

    :goto_43
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .registers 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 3983
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    packed-switch p0, :pswitch_data_44

    :pswitch_f
    move p0, v0

    :goto_10
    move p2, p0

    goto :goto_14

    :pswitch_12
    move p0, p3

    goto :goto_10

    :goto_14
    move v3, p2

    move p2, p0

    move p0, v3

    goto :goto_3f

    :cond_18
    if-ne p1, p3, :cond_21

    packed-switch p0, :pswitch_data_5e

    :pswitch_1d
    move p0, v0

    goto :goto_10

    :pswitch_1f
    move p0, p3

    goto :goto_10

    :cond_21
    if-ne p1, p4, :cond_3e

    const/16 p1, 0x51

    const/16 p2, 0x49

    const/16 p4, 0x3f

    const/16 v1, 0x33

    const/16 v2, 0x26

    packed-switch p0, :pswitch_data_78

    :pswitch_30
    move p1, v0

    :goto_31
    :pswitch_31
    move p2, p1

    goto :goto_3b

    :pswitch_33
    move p1, p2

    goto :goto_3b

    :pswitch_35
    move p1, p4

    goto :goto_31

    :pswitch_37
    move p1, v1

    goto :goto_31

    :pswitch_39
    move p1, v2

    goto :goto_31

    :goto_3b
    move p0, p2

    move p2, p1

    goto :goto_3f

    :cond_3e
    move p0, p2

    :goto_3f
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .registers 30

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    .line 1613
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    const/16 v5, 0xfc

    const/16 v6, 0x8a

    const/16 v7, 0xfa

    const/16 v8, 0x90

    const/16 v9, 0xf6

    const/16 v10, 0x98

    const/16 v11, 0xf0

    const/16 v12, 0xa1

    const/16 v13, 0xa9

    const/16 v14, 0xb3

    const/16 v15, 0xbe

    const/16 v16, 0xe2

    const/16 v17, 0xcc

    const/16 v18, 0xda

    const/16 v19, 0xee

    const/4 v4, 0x1

    const/16 v20, 0x0

    const/16 v21, 0xea

    const/16 v22, 0xe4

    const/16 v23, 0xff

    if-nez v0, :cond_65

    packed-switch v3, :pswitch_data_84

    :goto_39
    move/from16 v10, v20

    :goto_3b
    move/from16 v22, v10

    goto :goto_7f

    :pswitch_3e
    move/from16 v22, v5

    move v10, v6

    goto :goto_7f

    :pswitch_42
    move/from16 v22, v7

    move v10, v8

    goto :goto_7f

    :pswitch_46
    move/from16 v22, v9

    goto :goto_7f

    :pswitch_49
    move/from16 v22, v11

    move v10, v12

    goto :goto_7f

    :pswitch_4d
    move v10, v13

    move/from16 v22, v21

    goto :goto_7f

    :pswitch_51
    move v10, v14

    goto :goto_7f

    :pswitch_53
    move v10, v15

    goto :goto_7f

    :pswitch_55
    move/from16 v22, v16

    move/from16 v10, v17

    goto :goto_7f

    :pswitch_5a
    move/from16 v10, v18

    goto :goto_7f

    :pswitch_5d
    move/from16 v22, v19

    move/from16 v10, v21

    goto :goto_7f

    :pswitch_62
    move/from16 v10, v23

    goto :goto_3b

    :cond_65
    if-ne v0, v4, :cond_6b

    packed-switch v3, :pswitch_data_9e

    goto :goto_39

    :cond_6b
    if-ne v0, v1, :cond_7c

    packed-switch v3, :pswitch_data_b8

    move/from16 v0, v20

    move/from16 v23, v0

    goto :goto_77

    :pswitch_75
    move/from16 v0, v23

    :goto_77
    move/from16 v22, v0

    move/from16 v10, v23

    goto :goto_7f

    :cond_7c
    const/4 v10, -0x1

    const/16 v22, -0x1

    :goto_7f
    aput v22, v2, v20

    aput v10, v2, v4

    return-object v2

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_5a
        :pswitch_55
        :pswitch_53
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_5a
        :pswitch_55
        :pswitch_53
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .registers 26

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    .line 4843
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0xfc

    const/16 v6, 0x8a

    const/16 v7, 0xfa

    const/16 v8, 0x90

    const/16 v9, 0xf6

    const/16 v10, 0x98

    const/16 v11, 0xf0

    const/16 v12, 0xa1

    const/16 v13, 0xea

    const/16 v14, 0xa9

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0xcc

    const/16 v18, 0xff

    if-nez v0, :cond_4f

    const/16 v0, 0xcb

    packed-switch v3, :pswitch_data_92

    move/from16 v0, v16

    :goto_32
    move v4, v0

    goto :goto_49

    :pswitch_34
    move v0, v5

    move v4, v6

    goto :goto_49

    :pswitch_37
    move v0, v7

    move v4, v8

    goto :goto_49

    :pswitch_3a
    move v0, v9

    move v4, v10

    goto :goto_49

    :pswitch_3d
    move v0, v11

    move v4, v12

    goto :goto_49

    :pswitch_40
    move v0, v13

    move v4, v14

    goto :goto_49

    :goto_43
    :pswitch_43
    move/from16 v4, v17

    goto :goto_49

    :pswitch_46
    move/from16 v0, v18

    goto :goto_32

    :goto_49
    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    goto :goto_8d

    :cond_4f
    if-ne v0, v15, :cond_69

    packed-switch v3, :pswitch_data_ac

    move/from16 v0, v16

    goto :goto_32

    :pswitch_57
    const/16 v0, 0xd2

    goto :goto_43

    :pswitch_5a
    const/16 v0, 0xd1

    goto :goto_43

    :pswitch_5d
    const/16 v0, 0xcf

    goto :goto_43

    :pswitch_60
    const/16 v0, 0xce

    goto :goto_43

    :pswitch_63
    const/16 v0, 0xcd

    goto :goto_43

    :pswitch_66
    move/from16 v0, v18

    goto :goto_32

    :cond_69
    if-ne v0, v1, :cond_8c

    packed-switch v3, :pswitch_data_c6

    move/from16 v4, v16

    move/from16 v18, v4

    goto :goto_88

    :pswitch_73
    const/16 v0, 0xf1

    goto :goto_81

    :pswitch_76
    const/16 v0, 0xeb

    goto :goto_81

    :pswitch_79
    const/16 v0, 0xe4

    goto :goto_81

    :pswitch_7c
    const/16 v0, 0xde

    goto :goto_81

    :pswitch_7f
    const/16 v0, 0xd8

    :goto_81
    move/from16 v18, v0

    move/from16 v4, v17

    goto :goto_88

    :pswitch_86
    move/from16 v4, v18

    :goto_88
    move v0, v4

    move/from16 v4, v18

    goto :goto_8d

    :cond_8c
    move v0, v4

    :goto_8d
    aput v4, v2, v16

    aput v0, v2, v15

    return-object v2

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_46
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_86
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 1441
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_15

    packed-switch p0, :pswitch_data_40

    :pswitch_f
    move p2, p3

    goto :goto_12

    :pswitch_11
    move p2, v0

    :goto_12
    move p0, p2

    move p2, p3

    goto :goto_3a

    :cond_15
    if-ne p1, v0, :cond_23

    packed-switch p0, :pswitch_data_5a

    :pswitch_1a
    move p0, p3

    :goto_1b
    move p2, p0

    goto :goto_1f

    :pswitch_1d
    move p0, v0

    goto :goto_1b

    :goto_1f
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_3a

    :cond_23
    if-ne p1, p4, :cond_39

    packed-switch p0, :pswitch_data_74

    :pswitch_28
    move p2, p3

    goto :goto_37

    :pswitch_2a
    const/4 p0, 0x4

    goto :goto_36

    :pswitch_2c
    const/16 p0, 0xa

    goto :goto_36

    :pswitch_2f
    const/16 p0, 0xd

    goto :goto_36

    :pswitch_32
    const/16 p0, 0xb

    goto :goto_36

    :pswitch_35
    const/4 p0, 0x5

    :goto_36
    move p2, p0

    :goto_37
    move p0, p3

    goto :goto_3a

    :cond_39
    move p0, p2

    :goto_3a
    aput p2, p5, p3

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_28
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 4671
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    packed-switch p0, :pswitch_data_2e

    :pswitch_f
    move p2, v0

    goto :goto_12

    :pswitch_11
    move p2, p3

    :goto_12
    move p0, p2

    move p2, v0

    goto :goto_29

    :cond_15
    if-ne p1, p3, :cond_23

    packed-switch p0, :pswitch_data_48

    :pswitch_1a
    move p0, v0

    :goto_1b
    move p2, p0

    goto :goto_1f

    :pswitch_1d
    move p0, p3

    goto :goto_1b

    :goto_1f
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_29

    :cond_23
    if-ne p1, p4, :cond_28

    move p0, v0

    move p2, p0

    goto :goto_29

    :cond_28
    move p0, p2

    :goto_29
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .registers 9

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 1269
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/16 v2, 0xff

    if-nez p1, :cond_1d

    packed-switch p0, :pswitch_data_48

    move p2, v0

    :goto_14
    move v1, p2

    goto :goto_1a

    :pswitch_16
    move p2, v1

    goto :goto_1a

    :pswitch_18
    move p2, v2

    goto :goto_14

    :goto_1a
    move p0, p2

    move p2, v1

    goto :goto_42

    :cond_1d
    if-ne p1, p3, :cond_2c

    packed-switch p0, :pswitch_data_62

    move p2, v0

    :goto_23
    :pswitch_23
    move v2, p2

    goto :goto_29

    :pswitch_25
    move p2, v2

    move v2, v1

    goto :goto_29

    :pswitch_28
    move p2, v2

    :goto_29
    move p0, p2

    move p2, v2

    goto :goto_42

    :cond_2c
    if-ne p1, p4, :cond_41

    const/16 p1, 0xb6

    const/16 p2, 0xcc

    const/16 p4, 0xdf

    const/16 v1, 0xf0

    packed-switch p0, :pswitch_data_7c

    move p2, v0

    goto :goto_23

    :pswitch_3b
    move p2, p1

    goto :goto_23

    :pswitch_3d
    move p2, p4

    goto :goto_23

    :pswitch_3f
    move p2, v1

    goto :goto_23

    :cond_41
    move p0, p2

    :goto_42
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3f
        :pswitch_3d
        :pswitch_23
        :pswitch_3b
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .registers 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 4499
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/16 v2, 0xff

    if-nez p1, :cond_26

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_6a

    move p1, v0

    :goto_16
    :pswitch_16
    move p2, p1

    goto :goto_22

    :pswitch_18
    move p2, v1

    move p1, v2

    goto :goto_22

    :pswitch_1b
    const/16 p0, 0xf9

    move p1, p0

    move p2, v1

    goto :goto_22

    :pswitch_20
    move p1, v2

    goto :goto_16

    :goto_22
    move p0, p2

    move p2, p1

    goto/16 :goto_64

    :cond_26
    if-ne p1, p3, :cond_37

    packed-switch p0, :pswitch_data_84

    move p2, v0

    move v2, p2

    goto :goto_34

    :pswitch_2e
    const/16 p0, 0xfa

    move v2, p0

    :pswitch_31
    move p2, v1

    goto :goto_34

    :pswitch_33
    move p2, v2

    :goto_34
    move p0, p2

    move p2, v2

    goto :goto_64

    :cond_37
    if-ne p1, p4, :cond_63

    const/16 p1, 0xb6

    const/16 p2, 0xdf

    const/16 p4, 0xf0

    packed-switch p0, :pswitch_data_9e

    move p0, v0

    :goto_43
    move p2, p0

    goto :goto_5f

    :pswitch_45
    move p0, p1

    goto :goto_43

    :pswitch_47
    move p0, v1

    goto :goto_43

    :pswitch_49
    move p0, p2

    goto :goto_5f

    :pswitch_4b
    move p0, p4

    goto :goto_43

    :pswitch_4d
    const/16 p0, 0xec

    goto :goto_5b

    :pswitch_50
    const/16 p0, 0xee

    goto :goto_5b

    :pswitch_53
    const/16 p0, 0xed

    goto :goto_5b

    :pswitch_56
    const/16 p0, 0xe8

    goto :goto_5b

    :pswitch_59
    const/16 p0, 0xe1

    :goto_5b
    move p2, v1

    goto :goto_5f

    :pswitch_5d
    move p0, v2

    goto :goto_43

    :goto_5f
    move v3, p2

    move p2, p0

    move p0, v3

    goto :goto_64

    :cond_63
    move p0, p2

    :goto_64
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_5d
        :pswitch_4b
        :pswitch_49
        :pswitch_47
        :pswitch_45
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .registers 23

    move/from16 v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    .line 580
    invoke-virtual {v3, v4, v5}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0xd8

    const/16 v6, 0xca

    const/16 v7, 0xbc

    const/16 v8, 0xac

    const/16 v9, 0x9c

    const/16 v10, 0x88

    const/16 v11, 0x75

    const/16 v12, 0x5c

    const/16 v13, 0x42

    const/16 v14, 0x24

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v0, :cond_43

    packed-switch v3, :pswitch_data_56

    :goto_2a
    :pswitch_2a
    move/from16 v4, v16

    goto :goto_40

    :pswitch_2d
    move v4, v5

    goto :goto_40

    :pswitch_2f
    move v4, v6

    goto :goto_40

    :pswitch_31
    move v4, v7

    goto :goto_40

    :pswitch_33
    move v4, v8

    goto :goto_40

    :pswitch_35
    move v4, v9

    goto :goto_40

    :pswitch_37
    move v4, v10

    goto :goto_40

    :pswitch_39
    move v4, v11

    goto :goto_40

    :pswitch_3b
    move v4, v12

    goto :goto_40

    :pswitch_3d
    move v4, v13

    goto :goto_40

    :pswitch_3f
    move v4, v14

    :goto_40
    move/from16 v0, v16

    goto :goto_50

    :cond_43
    if-ne v0, v15, :cond_49

    packed-switch v3, :pswitch_data_70

    :pswitch_48
    goto :goto_2a

    :cond_49
    if-ne v0, v1, :cond_4f

    move/from16 v0, v16

    move v4, v0

    goto :goto_50

    :cond_4f
    move v0, v4

    :goto_50
    aput v4, v2, v16

    aput v0, v2, v15

    return-object v2

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_3f
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3f
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .registers 12

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 3810
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/16 p3, 0xd8

    const/16 v0, 0xca

    const/16 v1, 0xbc

    const/16 v2, 0xac

    const/16 v3, 0x9c

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_28

    packed-switch p0, :pswitch_data_4a

    :pswitch_19
    move p2, v5

    goto :goto_26

    :pswitch_1b
    move p2, p3

    goto :goto_26

    :pswitch_1d
    move p2, v0

    goto :goto_26

    :pswitch_1f
    move p2, v1

    goto :goto_26

    :pswitch_21
    move p2, v2

    goto :goto_26

    :pswitch_23
    move p2, v3

    goto :goto_26

    :pswitch_25
    move p2, v4

    :goto_26
    move p0, v5

    goto :goto_44

    :cond_28
    if-ne p1, v4, :cond_3e

    packed-switch p0, :pswitch_data_64

    :pswitch_2d
    move p4, v5

    goto :goto_3c

    :pswitch_2f
    move p4, p3

    goto :goto_3c

    :pswitch_31
    move p4, v0

    goto :goto_3c

    :pswitch_33
    move p4, v1

    goto :goto_3c

    :pswitch_35
    move p4, v2

    goto :goto_3c

    :pswitch_37
    move p4, v3

    goto :goto_3c

    :pswitch_39
    const/4 p4, 0x3

    goto :goto_3c

    :pswitch_3b
    move p4, v4

    :goto_3c
    :pswitch_3c
    move p2, p4

    goto :goto_26

    :cond_3e
    if-ne p1, p4, :cond_43

    move p0, v5

    move p2, p0

    goto :goto_44

    :cond_43
    move p0, p2

    :goto_44
    aput p2, p5, v5

    aput p0, p5, v4

    return-object p5

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_39
        :pswitch_37
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_2f
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 408
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_14

    packed-switch p0, :pswitch_data_2e

    :pswitch_f
    move p2, p3

    goto :goto_12

    :pswitch_11
    move p2, v0

    :goto_12
    move p0, p3

    goto :goto_28

    :cond_14
    if-ne p1, v0, :cond_22

    packed-switch p0, :pswitch_data_48

    :pswitch_19
    move p0, p3

    :goto_1a
    move p2, p0

    goto :goto_1e

    :pswitch_1c
    move p0, v0

    goto :goto_1a

    :goto_1e
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_28

    :cond_22
    if-ne p1, p4, :cond_27

    move p0, p3

    move p2, p0

    goto :goto_28

    :cond_27
    move p0, p2

    :goto_28
    aput p2, p5, p3

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 3638
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_14

    packed-switch p0, :pswitch_data_2e

    :pswitch_f
    move p2, v0

    goto :goto_12

    :pswitch_11
    move p2, p3

    :goto_12
    move p0, v0

    goto :goto_28

    :cond_14
    if-ne p1, p3, :cond_22

    packed-switch p0, :pswitch_data_48

    :pswitch_19
    move p0, v0

    :goto_1a
    move p2, p0

    goto :goto_1e

    :pswitch_1c
    move p0, p3

    goto :goto_1a

    :goto_1e
    move v1, p2

    move p2, p0

    move p0, v1

    goto :goto_28

    :cond_22
    if-ne p1, p4, :cond_27

    move p0, v0

    move p2, p0

    goto :goto_28

    :cond_27
    move p0, p2

    :goto_28
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .registers 9

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 235
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/16 v2, 0xff

    if-nez p1, :cond_1d

    packed-switch p0, :pswitch_data_3a

    move p2, v0

    :goto_14
    move v1, p2

    goto :goto_1a

    :pswitch_16
    move p2, v1

    goto :goto_1a

    :pswitch_18
    move p2, v2

    goto :goto_14

    :goto_1a
    move p0, p2

    move p2, v1

    goto :goto_35

    :cond_1d
    if-ne p1, p3, :cond_2d

    packed-switch p0, :pswitch_data_54

    move p2, v0

    :goto_23
    move v2, p2

    goto :goto_2a

    :pswitch_25
    move p2, v1

    goto :goto_23

    :pswitch_27
    move p2, v1

    goto :goto_2a

    :pswitch_29
    move p2, v2

    :goto_2a
    move p0, p2

    move p2, v2

    goto :goto_35

    :cond_2d
    if-ne p1, p4, :cond_34

    packed-switch p0, :pswitch_data_6e

    move p2, v0

    goto :goto_23

    :cond_34
    move p0, p2

    :goto_35
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_29
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .registers 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 3465
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/16 v2, 0xfe

    const/16 v3, 0xff

    if-nez p1, :cond_27

    packed-switch p0, :pswitch_data_56

    move p2, v0

    :goto_16
    move v2, p2

    goto :goto_24

    :pswitch_18
    move p2, v2

    goto :goto_24

    :pswitch_1a
    move p2, v1

    move v2, v3

    goto :goto_24

    :pswitch_1d
    const/16 p0, 0xef

    move v2, p0

    move p2, v1

    goto :goto_24

    :pswitch_22
    move p2, v3

    goto :goto_16

    :goto_24
    move p0, p2

    move p2, v2

    goto :goto_50

    :cond_27
    if-ne p1, p3, :cond_3c

    packed-switch p0, :pswitch_data_70

    move p2, v0

    :goto_2d
    move v3, p2

    goto :goto_39

    :pswitch_2f
    move p2, v2

    goto :goto_2d

    :pswitch_31
    move p2, v2

    goto :goto_39

    :pswitch_33
    const/16 p0, 0xee

    move v3, p0

    :goto_36
    :pswitch_36
    move p2, v1

    goto :goto_39

    :pswitch_38
    move p2, v3

    :goto_39
    move p0, p2

    move p2, v3

    goto :goto_50

    :cond_3c
    if-ne p1, p4, :cond_4f

    const/16 p1, 0xe4

    const/16 p2, 0xe2

    packed-switch p0, :pswitch_data_8a

    move p2, v0

    goto :goto_2d

    :pswitch_47
    move v3, p1

    goto :goto_36

    :pswitch_49
    move v3, p2

    goto :goto_36

    :pswitch_4b
    const/16 p0, 0xdc

    move v3, p0

    goto :goto_36

    :cond_4f
    move p0, p2

    :goto_50
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_38
        :pswitch_33
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_31
        :pswitch_2f
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_4b
        :pswitch_49
        :pswitch_47
        :pswitch_47
        :pswitch_49
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .registers 6

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 2130
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    const/4 p0, -0x1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_e

    :goto_b
    move p0, p3

    :cond_c
    move p1, p0

    goto :goto_14

    :cond_e
    if-ne p1, p2, :cond_11

    goto :goto_b

    :cond_11
    if-ne p1, p4, :cond_c

    goto :goto_b

    :goto_14
    aput p0, p5, p3

    aput p1, p5, p2

    return-object p5
.end method

.method public final getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .registers 7

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5360
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    packed-switch p0, :pswitch_data_24

    :pswitch_f
    move p4, v0

    goto :goto_12

    :pswitch_11
    move p4, p3

    :goto_12
    :pswitch_12
    move p2, p4

    move p0, v0

    goto :goto_1e

    :cond_15
    if-ne p1, p3, :cond_1a

    :goto_17
    move p0, v0

    move p2, p0

    goto :goto_1e

    :cond_1a
    if-ne p1, p4, :cond_1d

    goto :goto_17

    :cond_1d
    move p0, p2

    :goto_1e
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 1958
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-nez p1, :cond_1f

    packed-switch p0, :pswitch_data_3a

    :goto_11
    move p2, v0

    move v1, p2

    goto :goto_1c

    :pswitch_14
    const/16 p0, 0xcc

    const/16 p1, 0xcf

    move p2, p0

    move v1, p1

    goto :goto_1c

    :pswitch_1b
    move p2, v1

    :goto_1c
    move p0, p2

    move p2, v1

    goto :goto_35

    :cond_1f
    if-ne p1, p3, :cond_2e

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_54

    move p1, v0

    :goto_27
    :pswitch_27
    move p2, p1

    goto :goto_2b

    :pswitch_29
    move p1, v1

    goto :goto_27

    :goto_2b
    move p0, p2

    move p2, p1

    goto :goto_35

    :cond_2e
    if-ne p1, p4, :cond_34

    packed-switch p0, :pswitch_data_6e

    goto :goto_11

    :cond_34
    move p0, p2

    :goto_35
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_14
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_29
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .registers 14

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5188
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/16 p3, 0xd8

    const/16 v0, 0xd5

    const/4 v1, 0x1

    const/16 v2, 0xd3

    const/16 v3, 0xcf

    const/4 v4, 0x0

    const/16 v5, 0xcc

    const/16 v6, 0xff

    if-nez p1, :cond_2f

    packed-switch p0, :pswitch_data_66

    :goto_1b
    move p2, v4

    move v6, p2

    goto :goto_2c

    :pswitch_1e
    move v6, p3

    goto :goto_29

    :pswitch_20
    move v6, v0

    goto :goto_29

    :pswitch_22
    move v6, v2

    goto :goto_29

    :pswitch_24
    const/16 p0, 0xd1

    move v6, p0

    goto :goto_29

    :pswitch_28
    move v6, v3

    :goto_29
    move p2, v5

    goto :goto_2c

    :pswitch_2b
    move p2, v6

    :goto_2c
    move p0, p2

    move p2, v6

    goto :goto_61

    :cond_2f
    const/16 v7, 0xd0

    if-ne p1, v1, :cond_4c

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_80

    move p1, v4

    :goto_39
    :pswitch_39
    move p2, p1

    goto :goto_49

    :pswitch_3b
    move p1, p3

    goto :goto_45

    :pswitch_3d
    move p1, v0

    goto :goto_45

    :pswitch_3f
    move p1, v2

    goto :goto_45

    :pswitch_41
    move p2, v5

    move p1, v7

    goto :goto_49

    :pswitch_44
    move p1, v3

    :goto_45
    move p2, v5

    goto :goto_49

    :pswitch_47
    move p1, v6

    goto :goto_39

    :goto_49
    move p0, p2

    move p2, p1

    goto :goto_61

    :cond_4c
    if-ne p1, p4, :cond_60

    packed-switch p0, :pswitch_data_9a

    goto :goto_1b

    :pswitch_52
    const/16 p0, 0xd4

    goto :goto_59

    :pswitch_55
    move v6, v2

    goto :goto_29

    :pswitch_57
    const/16 p0, 0xd2

    :goto_59
    move v6, p0

    goto :goto_29

    :pswitch_5b
    move p2, v5

    move v6, v7

    goto :goto_2c

    :pswitch_5e
    move v6, v3

    goto :goto_29

    :cond_60
    move p0, p2

    :goto_61
    aput p2, p5, v4

    aput p0, p5, v1

    return-object p5

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3f
        :pswitch_3d
        :pswitch_3b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_55
        :pswitch_52
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .registers 8

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 1786
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-nez p1, :cond_1b

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_34

    move p1, v0

    :goto_14
    :pswitch_14
    move p2, p1

    goto :goto_18

    :pswitch_16
    move p1, v1

    goto :goto_14

    :goto_18
    move p0, p2

    move p2, p1

    goto :goto_2e

    :cond_1b
    if-ne p1, p3, :cond_27

    packed-switch p0, :pswitch_data_4e

    :goto_20
    move p2, v0

    move v1, p2

    goto :goto_24

    :pswitch_23
    move p2, v1

    :goto_24
    move p0, p2

    move p2, v1

    goto :goto_2e

    :cond_27
    if-ne p1, p4, :cond_2d

    packed-switch p0, :pswitch_data_68

    goto :goto_20

    :cond_2d
    move p0, p2

    :goto_2e
    aput p2, p5, v0

    aput p0, p5, p3

    return-object p5

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public final getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .registers 10

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 5016
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result p0

    const/4 p2, -0x1

    const/16 p3, 0xc2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0xff

    if-nez p1, :cond_2f

    const/16 p1, 0xfe

    packed-switch p0, :pswitch_data_68

    move p1, v1

    :goto_18
    :pswitch_18
    move p2, p1

    goto :goto_2c

    :pswitch_1a
    const/16 p0, 0xa4

    goto :goto_25

    :pswitch_1d
    const/16 p0, 0xad

    goto :goto_25

    :pswitch_20
    const/16 p0, 0xb5

    goto :goto_25

    :pswitch_23
    const/16 p0, 0xbc

    :goto_25
    move p1, p0

    goto :goto_28

    :pswitch_27
    move p1, p3

    :goto_28
    move p2, v2

    goto :goto_2c

    :pswitch_2a
    move p1, v3

    goto :goto_18

    :goto_2c
    move p0, p2

    move p2, p1

    goto :goto_62

    :cond_2f
    if-ne p1, v0, :cond_4c

    packed-switch p0, :pswitch_data_82

    :goto_34
    move p2, v1

    move v3, p2

    goto :goto_49

    :pswitch_37
    const/16 p0, 0xa2

    goto :goto_45

    :pswitch_3a
    const/16 p0, 0xab

    goto :goto_45

    :pswitch_3d
    const/16 p0, 0xb3

    goto :goto_45

    :pswitch_40
    const/16 p0, 0xba

    goto :goto_45

    :pswitch_43
    const/16 p0, 0xc0

    :goto_45
    move v3, p0

    :goto_46
    move p2, v2

    goto :goto_49

    :pswitch_48
    move p2, v3

    :goto_49
    move p0, p2

    move p2, v3

    goto :goto_62

    :cond_4c
    if-ne p1, p4, :cond_61

    packed-switch p0, :pswitch_data_9c

    goto :goto_34

    :pswitch_52
    const/16 p0, 0xc1

    goto :goto_5f

    :pswitch_55
    move v3, p3

    goto :goto_46

    :pswitch_57
    const/16 p0, 0xc3

    goto :goto_5f

    :pswitch_5a
    const/16 p0, 0xc5

    goto :goto_5f

    :pswitch_5d
    const/16 p0, 0xc7

    :goto_5f
    move v3, p0

    goto :goto_46

    :cond_61
    move p0, p2

    :goto_62
    aput p2, p5, v1

    aput p0, p5, v0

    return-object p5

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_48
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_55
        :pswitch_52
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public getPredefinedValueForEachType(II)[D
    .registers 6

    const/4 p0, 0x2

    new-array v0, p0, [D

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    if-eq p1, v1, :cond_1b

    if-eq p1, p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 6569
    :cond_e
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    .line 6570
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    goto :goto_34

    .line 6565
    :cond_1b
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    .line 6566
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    goto :goto_34

    .line 6561
    :cond_28
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v2

    .line 6562
    sget-object p0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide p0, p0, p2

    aput-wide p0, v0, v1

    :goto_34
    return-object v0
.end method

.method public final roundHalfUp(D)I
    .registers 5

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    .line 6589
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
