.class public Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;
.super Ljava/lang/Object;
.source "SemNscXgbL2Rt.java"


# static fields
.field private static final NUM_FEATURE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "SemNscXgbL2Rt"


# instance fields
.field private mInputArrLi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ppParams:[I

.field private predictor:Lcom/xgboost/Predictor;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/system/etc/xgb_l2_rt.model"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/xgboost/Predictor;

    invoke-direct {v1, v0}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->predictor:Lcom/xgboost/Predictor;

    .line 42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    const-string v0, "SemNscXgbL2Rt"

    const-string v1, "Model Loaded"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->ppParams:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3
        0x3
    .end array-data
.end method

.method private argMax([F)I
    .registers 8

    const/4 p0, 0x0

    .line 105
    aget v0, p1, p0

    float-to-double v0, v0

    const/4 v2, 0x1

    .line 108
    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_14

    .line 109
    aget v3, p1, v2

    float-to-double v4, v3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_11

    float-to-double v0, v3

    move p0, v2

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return p0
.end method

.method private filterInput([F)[F
    .registers 5

    .line 93
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 p1, 0x4

    .line 95
    aget v0, p0, p1

    const v1, 0x49742400    # 1000000.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 96
    aput v2, p0, p1

    :cond_13
    const/16 p1, 0x8

    .line 98
    aget v0, p0, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 99
    aput v2, p0, p1

    :cond_1d
    return-object p0
.end method


# virtual methods
.method public biasVoting([I)I
    .registers 6

    const/4 v0, 0x0

    .line 138
    aget v1, p1, v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->ppParams:[I

    const/4 v2, 0x1

    aget v3, p0, v2

    if-lt v1, v3, :cond_b

    return v0

    .line 140
    :cond_b
    aget p1, p1, v2

    const/4 v0, 0x2

    aget p0, p0, v0

    if-lt p1, p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getNumClass()I
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->predictor:Lcom/xgboost/Predictor;

    invoke-virtual {p0}, Lcom/xgboost/Predictor;->getNumClass()I

    move-result p0

    return p0
.end method

.method public postProcessing([I)I
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->ppParams:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->biasVoting([I)I

    move-result p0

    goto :goto_10

    .line 127
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->biasVoting([I)I

    move-result p0

    :goto_10
    return p0
.end method

.method public predict()I
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_c

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;F)[F

    move-result-object v0

    const/4 v1, 0x1

    .line 62
    invoke-static {v0, v1}, Lcom/xgboost/FVec$Transformer;->fromArray([FZ)Lcom/xgboost/FVec;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 67
    iget-object v3, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->predictor:Lcom/xgboost/Predictor;

    invoke-virtual {v3, v0}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;)[F

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-float v1, v3

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L2 RT 1 sample inference time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " msecs"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemNscXgbL2Rt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->argMax([F)I

    move-result p0

    return p0
.end method

.method public reloadPredictor(Ljava/io/FileInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance v0, Lcom/xgboost/Predictor;

    invoke-direct {v0, p1}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->predictor:Lcom/xgboost/Predictor;

    .line 52
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p0, "SemNscXgbL2Rt"

    const-string p1, "L2 RT model reloaded"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPpParams([I)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->ppParams:[I

    return-void
.end method

.method public updateInpArrLi([F)V
    .registers 6

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->filterInput([F)[F

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x78

    if-lt v0, v2, :cond_26

    move v0, v1

    .line 81
    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_37

    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 86
    :cond_26
    :goto_26
    array-length v0, p1

    if-ge v1, v0, :cond_37

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/nsc/SemNscXgbL2Rt;->mInputArrLi:Ljava/util/ArrayList;

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_37
    return-void
.end method
