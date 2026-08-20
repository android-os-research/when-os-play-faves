.class public Lcom/xgboost/SparkModelParam;
.super Ljava/lang/Object;
.source "SparkModelParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MODEL_TYPE_CLS:Ljava/lang/String; = "_cls_"

.field public static final MODEL_TYPE_REG:Ljava/lang/String; = "_reg_"


# instance fields
.field final featureCol:Ljava/lang/String;

.field final labelCol:Ljava/lang/String;

.field final modelType:Ljava/lang/String;

.field final predictionCol:Ljava/lang/String;

.field final rawPredictionCol:Ljava/lang/String;

.field final thresholds:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xgboost/ModelReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xgboost/SparkModelParam;->modelType:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/xgboost/SparkModelParam;->featureCol:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readUTF()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xgboost/SparkModelParam;->labelCol:Ljava/lang/String;

    .line 24
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readUTF()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/xgboost/SparkModelParam;->predictionCol:Ljava/lang/String;

    const-string p2, "_cls_"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 27
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/SparkModelParam;->rawPredictionCol:Ljava/lang/String;

    .line 28
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readIntBE()I

    move-result p1

    if-lez p1, :cond_2c

    .line 29
    invoke-virtual {p3, p1}, Lcom/xgboost/ModelReader;->readDoubleArrayBE(I)[D

    move-result-object v0

    :cond_2c
    iput-object v0, p0, Lcom/xgboost/SparkModelParam;->thresholds:[D

    goto :goto_3b

    :cond_2f
    const-string p2, "_reg_"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 32
    iput-object v0, p0, Lcom/xgboost/SparkModelParam;->rawPredictionCol:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/xgboost/SparkModelParam;->thresholds:[D

    :goto_3b
    return-void

    .line 36
    :cond_3c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown modelType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFeatureCol()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->featureCol:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelCol()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->labelCol:Ljava/lang/String;

    return-object p0
.end method

.method public getModelType()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->modelType:Ljava/lang/String;

    return-object p0
.end method

.method public getPredictionCol()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->predictionCol:Ljava/lang/String;

    return-object p0
.end method

.method public getRawPredictionCol()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->rawPredictionCol:Ljava/lang/String;

    return-object p0
.end method

.method public getThresholds()[D
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/xgboost/SparkModelParam;->thresholds:[D

    return-object p0
.end method
