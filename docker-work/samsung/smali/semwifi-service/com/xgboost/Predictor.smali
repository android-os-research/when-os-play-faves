.class public Lcom/xgboost/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xgboost/Predictor$ModelParam;
    }
.end annotation


# instance fields
.field private base_score:F

.field private gbm:Lcom/xgboost/GradBooster;

.field private mparam:Lcom/xgboost/Predictor$ModelParam;

.field private name_gbm:Ljava/lang/String;

.field private name_obj:Ljava/lang/String;

.field private obj:Lcom/xgboost/ObjFunction;

.field private sparkModelParam:Lcom/xgboost/SparkModelParam;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/xgboost/Predictor;-><init>(Ljava/io/InputStream;Lcom/xgboost/PredictorConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/xgboost/PredictorConfiguration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_7

    .line 33
    sget-object p2, Lcom/xgboost/PredictorConfiguration;->DEFAULT:Lcom/xgboost/PredictorConfiguration;

    .line 36
    :cond_7
    new-instance v0, Lcom/xgboost/ModelReader;

    invoke-direct {v0, p1}, Lcom/xgboost/ModelReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/xgboost/Predictor;->readParam(Lcom/xgboost/ModelReader;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/xgboost/Predictor;->initObjFunction(Lcom/xgboost/PredictorConfiguration;)V

    .line 40
    invoke-virtual {p0}, Lcom/xgboost/Predictor;->initObjGbm()V

    .line 42
    iget-object p1, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    iget-object v1, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget v1, v1, Lcom/xgboost/Predictor$ModelParam;->saved_with_pbuffer:I

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-interface {p1, p2, v0, v1}, Lcom/xgboost/GradBooster;->loadModel(Lcom/xgboost/PredictorConfiguration;Lcom/xgboost/ModelReader;Z)V

    .line 44
    iget-object p1, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    # getter for: Lcom/xgboost/Predictor$ModelParam;->major_version:I
    invoke-static {p1}, Lcom/xgboost/Predictor$ModelParam;->access$000(Lcom/xgboost/Predictor$ModelParam;)I

    move-result p1

    if-lt p1, v2, :cond_39

    .line 45
    iget-object p1, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    iget-object p2, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget p2, p2, Lcom/xgboost/Predictor$ModelParam;->base_score:F

    invoke-virtual {p1, p2}, Lcom/xgboost/ObjFunction;->probToMargin(F)F

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor;->base_score:F

    goto :goto_3f

    .line 47
    :cond_39
    iget-object p1, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget p1, p1, Lcom/xgboost/Predictor$ModelParam;->base_score:F

    iput p1, p0, Lcom/xgboost/Predictor;->base_score:F

    :goto_3f
    return-void
.end method


# virtual methods
.method public getBaseScore()F
    .registers 1

    .line 344
    iget p0, p0, Lcom/xgboost/Predictor;->base_score:F

    return p0
.end method

.method public getBooster()Lcom/xgboost/GradBooster;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    return-object p0
.end method

.method public getNumClass()I
    .registers 1

    .line 300
    iget-object p0, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget p0, p0, Lcom/xgboost/Predictor$ModelParam;->num_class:I

    return p0
.end method

.method public getObjName()Ljava/lang/String;
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/xgboost/Predictor;->name_obj:Ljava/lang/String;

    return-object p0
.end method

.method public getSparkModelParam()Lcom/xgboost/SparkModelParam;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/xgboost/Predictor;->sparkModelParam:Lcom/xgboost/SparkModelParam;

    return-object p0
.end method

.method initObjFunction(Lcom/xgboost/PredictorConfiguration;)V
    .registers 2

    .line 114
    invoke-virtual {p1}, Lcom/xgboost/PredictorConfiguration;->getObjFunction()Lcom/xgboost/ObjFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    if-nez p1, :cond_10

    .line 117
    iget-object p1, p0, Lcom/xgboost/Predictor;->name_obj:Ljava/lang/String;

    invoke-static {p1}, Lcom/xgboost/ObjFunction;->fromName(Ljava/lang/String;)Lcom/xgboost/ObjFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    :cond_10
    return-void
.end method

.method initObjGbm()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/xgboost/Predictor;->name_obj:Ljava/lang/String;

    invoke-static {v0}, Lcom/xgboost/ObjFunction;->fromName(Ljava/lang/String;)Lcom/xgboost/ObjFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    .line 123
    iget-object v0, p0, Lcom/xgboost/Predictor;->name_gbm:Ljava/lang/String;

    invoke-static {v0}, Lcom/xgboost/GradBooster$Factory;->createGradBooster(Ljava/lang/String;)Lcom/xgboost/GradBooster;

    move-result-object v0

    iput-object v0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    .line 124
    iget-object v1, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget v1, v1, Lcom/xgboost/Predictor$ModelParam;->num_class:I

    invoke-interface {v0, v1}, Lcom/xgboost/GradBooster;->setNumClass(I)V

    .line 125
    iget-object v0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    iget-object p0, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    iget p0, p0, Lcom/xgboost/Predictor$ModelParam;->num_feature:I

    invoke-interface {v0, p0}, Lcom/xgboost/GradBooster;->setNumFeature(I)V

    return-void
.end method

.method public predict(Lcom/xgboost/FVec;)[F
    .registers 3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;Z)[F

    move-result-object p0

    return-object p0
.end method

.method public predict(Lcom/xgboost/FVec;F)[F
    .registers 4

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;FI)[F

    move-result-object p0

    return-object p0
.end method

.method public predict(Lcom/xgboost/FVec;FI)[F
    .registers 4

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/xgboost/Predictor;->predictRaw(Lcom/xgboost/FVec;FI)[F

    move-result-object p1

    .line 170
    iget-object p0, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    invoke-virtual {p0, p1}, Lcom/xgboost/ObjFunction;->predTransform([F)[F

    move-result-object p0

    return-object p0
.end method

.method public predict(Lcom/xgboost/FVec;Z)[F
    .registers 4

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, p2, v0}, Lcom/xgboost/Predictor;->predict(Lcom/xgboost/FVec;ZI)[F

    move-result-object p0

    return-object p0
.end method

.method public predict(Lcom/xgboost/FVec;ZI)[F
    .registers 5

    .line 183
    iget v0, p0, Lcom/xgboost/Predictor;->base_score:F

    invoke-virtual {p0, p1, v0, p3}, Lcom/xgboost/Predictor;->predictRaw(Lcom/xgboost/FVec;FI)[F

    move-result-object p1

    if-nez p2, :cond_e

    .line 185
    iget-object p0, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    invoke-virtual {p0, p1}, Lcom/xgboost/ObjFunction;->predTransform([F)[F

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method public predictLeaf(Lcom/xgboost/FVec;)[I
    .registers 3

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/xgboost/Predictor;->predictLeaf(Lcom/xgboost/FVec;I)[I

    move-result-object p0

    return-object p0
.end method

.method public predictLeaf(Lcom/xgboost/FVec;I)[I
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    invoke-interface {p0, p1, p2}, Lcom/xgboost/GradBooster;->predictLeaf(Lcom/xgboost/FVec;I)[I

    move-result-object p0

    return-object p0
.end method

.method public predictLeafPath(Lcom/xgboost/FVec;)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/xgboost/Predictor;->predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;
    .registers 3

    .line 287
    iget-object p0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    invoke-interface {p0, p1, p2}, Lcom/xgboost/GradBooster;->predictLeafPath(Lcom/xgboost/FVec;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method predictRaw(Lcom/xgboost/FVec;FI)[F
    .registers 4

    .line 191
    iget-object p0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    invoke-interface {p0, p1, p3}, Lcom/xgboost/GradBooster;->predict(Lcom/xgboost/FVec;I)[F

    move-result-object p0

    const/4 p1, 0x0

    .line 192
    :goto_7
    array-length p3, p0

    if-ge p1, p3, :cond_12

    .line 193
    aget p3, p0, p1

    add-float/2addr p3, p2

    aput p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    return-object p0
.end method

.method public predictSingle(Lcom/xgboost/FVec;)F
    .registers 3

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/xgboost/Predictor;->predictSingle(Lcom/xgboost/FVec;Z)F

    move-result p0

    return p0
.end method

.method public predictSingle(Lcom/xgboost/FVec;Z)F
    .registers 4

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcom/xgboost/Predictor;->predictSingle(Lcom/xgboost/FVec;ZI)F

    move-result p0

    return p0
.end method

.method public predictSingle(Lcom/xgboost/FVec;ZI)F
    .registers 4

    .line 237
    invoke-virtual {p0, p1, p3}, Lcom/xgboost/Predictor;->predictSingleRaw(Lcom/xgboost/FVec;I)F

    move-result p1

    if-nez p2, :cond_c

    .line 239
    iget-object p0, p0, Lcom/xgboost/Predictor;->obj:Lcom/xgboost/ObjFunction;

    invoke-virtual {p0, p1}, Lcom/xgboost/ObjFunction;->predTransform(F)F

    move-result p1

    :cond_c
    return p1
.end method

.method predictSingleRaw(Lcom/xgboost/FVec;I)F
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/xgboost/Predictor;->gbm:Lcom/xgboost/GradBooster;

    invoke-interface {v0, p1, p2}, Lcom/xgboost/GradBooster;->predictSingle(Lcom/xgboost/FVec;I)F

    move-result p1

    iget p0, p0, Lcom/xgboost/Predictor;->base_score:F

    add-float/2addr p1, p0

    return p1
.end method

.method readParam(Lcom/xgboost/ModelReader;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 52
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readByteArray(I)[B

    move-result-object v1

    .line 53
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readByteArray(I)[B

    move-result-object v0

    const/4 v2, 0x0

    .line 58
    aget-byte v3, v1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x62

    if-ne v3, v7, :cond_2f

    aget-byte v7, v1, v6

    const/16 v8, 0x69

    if-ne v7, v8, :cond_2f

    aget-byte v7, v1, v5

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_2f

    aget-byte v7, v1, v4

    const/16 v8, 0x66

    if-ne v7, v8, :cond_2f

    .line 64
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->asFloat([B)F

    move-result v0

    .line 65
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readUnsignedInt()I

    move-result v1

    goto/16 :goto_9f

    :cond_2f
    if-nez v3, :cond_94

    .line 67
    aget-byte v3, v1, v6

    const/4 v7, 0x5

    if-ne v3, v7, :cond_94

    aget-byte v3, v1, v5

    const/16 v7, 0x5f

    if-ne v3, v7, :cond_94

    const/4 v3, 0x0

    .line 73
    aget-byte v8, v1, v4

    const/16 v9, 0x63

    if-ne v8, v9, :cond_56

    aget-byte v9, v0, v2

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_56

    aget-byte v9, v0, v6

    const/16 v10, 0x73

    if-ne v9, v10, :cond_56

    aget-byte v9, v0, v5

    if-ne v9, v7, :cond_56

    const-string v3, "_cls_"

    goto :goto_6c

    :cond_56
    const/16 v9, 0x72

    if-ne v8, v9, :cond_6c

    .line 80
    aget-byte v2, v0, v2

    const/16 v8, 0x65

    if-ne v2, v8, :cond_6c

    aget-byte v2, v0, v6

    const/16 v6, 0x67

    if-ne v2, v6, :cond_6c

    aget-byte v2, v0, v5

    if-ne v2, v7, :cond_6c

    const-string v3, "_reg_"

    :cond_6c
    :goto_6c
    if-eqz v3, :cond_8b

    .line 89
    aget-byte v0, v0, v4

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readByteAsInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readUTF(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/xgboost/SparkModelParam;

    invoke-direct {v1, v3, v0, p1}, Lcom/xgboost/SparkModelParam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xgboost/ModelReader;)V

    iput-object v1, p0, Lcom/xgboost/Predictor;->sparkModelParam:Lcom/xgboost/SparkModelParam;

    .line 94
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readFloat()F

    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readUnsignedInt()I

    move-result v1

    goto :goto_9f

    .line 98
    :cond_8b
    invoke-virtual {p1, v1}, Lcom/xgboost/ModelReader;->asFloat([B)F

    move-result v1

    .line 99
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->asUnsignedInt([B)I

    move-result v0

    goto :goto_9c

    .line 103
    :cond_94
    invoke-virtual {p1, v1}, Lcom/xgboost/ModelReader;->asFloat([B)F

    move-result v1

    .line 104
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->asUnsignedInt([B)I

    move-result v0

    :goto_9c
    move v11, v1

    move v1, v0

    move v0, v11

    .line 107
    :goto_9f
    new-instance v2, Lcom/xgboost/Predictor$ModelParam;

    invoke-direct {v2, v0, v1, p1}, Lcom/xgboost/Predictor$ModelParam;-><init>(FILcom/xgboost/ModelReader;)V

    iput-object v2, p0, Lcom/xgboost/Predictor;->mparam:Lcom/xgboost/Predictor$ModelParam;

    .line 109
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xgboost/Predictor;->name_obj:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/Predictor;->name_gbm:Ljava/lang/String;

    return-void
.end method
