.class public Lcom/xgboost/GBLinear;
.super Lcom/xgboost/GBBase;
.source "GBLinear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/GBLinear$ModelParam;
    }
.end annotation


# instance fields
.field private weights:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/xgboost/GBBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bias(I)F
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/xgboost/GBLinear;->weights:[F

    iget v1, p0, Lcom/xgboost/GBBase;->num_feature:I

    iget p0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    aget p0, v0, v1

    return p0
.end method

.method public getNumFeature()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/xgboost/GBBase;->num_feature:I

    return p0
.end method

.method public getNumOutputGroup()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    return p0
.end method

.method public loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance p1, Lcom/xgboost/GBLinear$ModelParam;

    invoke-direct {p1, p2}, Lcom/xgboost/GBLinear$ModelParam;-><init>(Lcom/xgboost/ModelReader;)V

    .line 16
    invoke-virtual {p2}, Lcom/xgboost/ModelReader;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    .line 18
    iget p1, p0, Lcom/xgboost/GBBase;->num_feature:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/xgboost/GBBase;->num_output_group:I

    mul-int/2addr p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/xgboost/GBLinear;->weights:[F

    goto :goto_22

    :cond_1b
    long-to-int p1, v0

    .line 20
    invoke-virtual {p2, p1}, Lcom/xgboost/ModelReader;->readFloatArray(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/GBLinear;->weights:[F

    :goto_22
    return-void
.end method

.method pred(Lcom/xgboost/FVec;I)F
    .registers 7

    .line 44
    invoke-virtual {p0, p2}, Lcom/xgboost/GBLinear;->bias(I)F

    move-result v0

    const/4 v1, 0x0

    .line 46
    :goto_5
    iget v2, p0, Lcom/xgboost/GBBase;->num_feature:I

    if-ge v1, v2, :cond_1c

    .line 47
    invoke-interface {p1, v1}, Lcom/xgboost/FVec;->fvalue(I)F

    move-result v2

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_19

    .line 49
    invoke-virtual {p0, v1, p2}, Lcom/xgboost/GBLinear;->weight(II)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    return v0
.end method

.method public predict(Lcom/xgboost/FVec;I)[F
    .registers 5

    .line 26
    iget p2, p0, Lcom/xgboost/GBBase;->num_output_group:I

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 27
    :goto_5
    iget v1, p0, Lcom/xgboost/GBBase;->num_output_group:I

    if-ge v0, v1, :cond_12

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/xgboost/GBLinear;->pred(Lcom/xgboost/FVec;I)F

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    return-object p2
.end method

.method public predictLeaf(Lcom/xgboost/FVec;I)[I
    .registers 3

    .line 57
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "gblinear does not support predict leaf index"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;
    .registers 3

    .line 62
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "gblinear does not support predict leaf path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public predictSingle(Lcom/xgboost/FVec;I)F
    .registers 4

    .line 35
    iget p2, p0, Lcom/xgboost/GBBase;->num_output_group:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xgboost/GBLinear;->pred(Lcom/xgboost/FVec;I)F

    move-result p0

    return p0

    .line 36
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t invoke predictSingle() because this model outputs multiple values: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setNumClass(I)V
    .registers 2

    .line 9
    invoke-super {p0, p1}, Lcom/xgboost/GBBase;->setNumClass(I)V

    return-void
.end method

.method public bridge synthetic setNumFeature(I)V
    .registers 2

    .line 9
    invoke-super {p0, p1}, Lcom/xgboost/GBBase;->setNumFeature(I)V

    return-void
.end method

.method public weight(II)F
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/xgboost/GBLinear;->weights:[F

    iget p0, p0, Lcom/xgboost/GBBase;->num_output_group:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    aget p0, v0, p1

    return p0
.end method
