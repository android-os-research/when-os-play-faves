.class public Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;
.super Ljava/lang/Object;
.source "SemNscXgbMsL1.java"


# static fields
.field private static final NUM_CLASSES:I = 0x3

.field private static final NUM_FEATURE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SemNscXgbMsL1"


# instance fields
.field private cgPredictor:Lcom/xgboost/Predictor;

.field private mInputArrLi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private nrtPredictor:Lcom/xgboost/Predictor;

.field private ppParams:[I

.field private probability:[F

.field private rtPredictor:Lcom/xgboost/Predictor;

.field private runNrtModel:Z


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/system/etc/xgb_ms_rt_l1.model"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/xgboost/Predictor;

    invoke-direct {v1, v0}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->rtPredictor:Lcom/xgboost/Predictor;

    .line 48
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 50
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/system/etc/xgb_ms_cg_l1.model"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/xgboost/Predictor;

    invoke-direct {v1, v0}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->cgPredictor:Lcom/xgboost/Predictor;

    .line 52
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 54
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/system/etc/xgb_ms_nrt_l1.model"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/xgboost/Predictor;

    invoke-direct {v1, v0}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->nrtPredictor:Lcom/xgboost/Predictor;

    .line 56
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 59
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    const-string v0, "SemNscXgbMsL1"

    const-string v1, "All models were loaded"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 62
    fill-array-data v0, :array_56

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->ppParams:[I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->runNrtModel:Z

    return-void

    nop

    :array_56
    .array-data 4
        0x0
        0x3
        0x3
        0x5
    .end array-data
.end method

.method public static argMax([D)I
    .registers 8

    const/4 v0, 0x0

    .line 167
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    .line 170
    :goto_4
    array-length v4, p0

    if-ge v3, v4, :cond_12

    .line 171
    aget-wide v4, p0, v3

    cmpg-double v6, v1, v4

    if-gez v6, :cond_f

    move v0, v3

    move-wide v1, v4

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_12
    return v0
.end method

.method private filterInput([F)[F
    .registers 5

    .line 155
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 p1, 0x4

    .line 157
    aget v0, p0, p1

    const v1, 0x49742400    # 1000000.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 158
    aput v2, p0, p1

    :cond_13
    const/16 p1, 0x8

    .line 160
    aget v0, p0, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 161
    aput v2, p0, p1

    :cond_1d
    return-object p0
.end method


# virtual methods
.method public biasVoting([I)[I
    .registers 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_15

    .line 221
    aget v3, p1, v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->ppParams:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-lt v3, v4, :cond_13

    const/4 v3, 0x1

    .line 222
    aput v3, v1, v2

    :cond_13
    move v2, v5

    goto :goto_4

    :cond_15
    return-object v1
.end method

.method public genRandFloatArr(I)[F
    .registers 5

    .line 186
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 187
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_13

    .line 189
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    return-object v0
.end method

.method public getInputArray()[F
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;F)[F

    move-result-object p0

    return-object p0
.end method

.method public getNumClass()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public getProbability()[F
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    return-object p0
.end method

.method public postProcessing([I)[I
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->ppParams:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_c

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->biasVoting([I)[I

    move-result-object p0

    goto :goto_10

    .line 207
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->biasVoting([I)[I

    move-result-object p0

    :goto_10
    return-object p0
.end method

.method public predict()[D
    .registers 11

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_e

    return-object v0

    .line 94
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;F)[F

    move-result-object v1

    const/4 v3, 0x1

    .line 95
    invoke-static {v1, v3}, Lcom/xgboost/FVec$Transformer;->fromArray([FZ)Lcom/xgboost/FVec;

    move-result-object v1

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 101
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->cgPredictor:Lcom/xgboost/Predictor;

    invoke-virtual {v6, v1}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;)[F

    move-result-object v6

    .line 102
    iget-object v7, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    aget v8, v6, v2

    aput v8, v7, v2

    .line 103
    aget v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-double v7, v7

    aput-wide v7, v0, v2

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probability - Cloud gaming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SemNscXgbMsL1"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v6, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->rtPredictor:Lcom/xgboost/Predictor;

    invoke-virtual {v6, v1}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;)[F

    move-result-object v6

    .line 107
    iget-object v8, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    aget v9, v6, v2

    aput v9, v8, v3

    .line 108
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-double v8, v8

    aput-wide v8, v0, v3

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probability - Real time: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->runNrtModel:Z

    const/4 v6, 0x2

    if-eqz v3, :cond_b2

    .line 112
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->nrtPredictor:Lcom/xgboost/Predictor;

    invoke-virtual {v3, v1}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;)[F

    move-result-object v1

    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    aget v2, v1, v2

    aput v2, p0, v6

    .line 114
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-double v2, p0

    aput-wide v2, v0, v6

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probability - Non real time: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 117
    :cond_b2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->probability:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, p0, v6

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    aput-wide v1, v0, v6

    .line 121
    :goto_bc
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    long-to-float p0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr p0, v1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 sample inference time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " msecs"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public reloadPredictorCg(Ljava/io/FileInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 69
    :cond_3
    new-instance v0, Lcom/xgboost/Predictor;

    invoke-direct {v0, p1}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->cgPredictor:Lcom/xgboost/Predictor;

    .line 70
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p0, "SemNscXgbMsL1"

    const-string p1, "CG model reloaded"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reloadPredictorNrt(Ljava/io/FileInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 83
    :cond_3
    new-instance v0, Lcom/xgboost/Predictor;

    invoke-direct {v0, p1}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->nrtPredictor:Lcom/xgboost/Predictor;

    .line 84
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p0, "SemNscXgbMsL1"

    const-string p1, "NRT model reloaded"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reloadPredictorRt(Ljava/io/FileInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 76
    :cond_3
    new-instance v0, Lcom/xgboost/Predictor;

    invoke-direct {v0, p1}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->rtPredictor:Lcom/xgboost/Predictor;

    .line 77
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p0, "SemNscXgbMsL1"

    const-string p1, "RT model reloaded"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPpParams([I)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->ppParams:[I

    return-void
.end method

.method public setRunNrtModel(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->runNrtModel:Z

    return-void
.end method

.method public updateInpArrLi([F)V
    .registers 6

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->filterInput([F)[F

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_26

    move v0, v1

    .line 143
    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_37

    .line 144
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 148
    :cond_26
    :goto_26
    array-length v0, p1

    if-ge v1, v0, :cond_37

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbMsL1;->mInputArrLi:Ljava/util/ArrayList;

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_37
    return-void
.end method
