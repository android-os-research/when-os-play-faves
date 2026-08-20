.class Lcom/xgboost/Predictor$ModelParam;
.super Ljava/lang/Object;
.source "Predictor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/Predictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelParam"
.end annotation


# instance fields
.field final base_score:F

.field private final contain_eval_metrics:I

.field private final major_version:I

.field private final minor_version:I

.field final num_class:I

.field final num_feature:I

.field final reserved:[I

.field final saved_with_pbuffer:I


# direct methods
.method constructor <init>(FILcom/xgboost/ModelReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->base_score:F

    .line 325
    iput p2, p0, Lcom/xgboost/Predictor$ModelParam;->num_feature:I

    .line 326
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->num_class:I

    .line 327
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->saved_with_pbuffer:I

    .line 328
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->contain_eval_metrics:I

    .line 329
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readUnsignedInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->major_version:I

    .line 330
    invoke-virtual {p3}, Lcom/xgboost/ModelReader;->readUnsignedInt()I

    move-result p1

    iput p1, p0, Lcom/xgboost/Predictor$ModelParam;->minor_version:I

    const/16 p1, 0x1b

    .line 331
    invoke-virtual {p3, p1}, Lcom/xgboost/ModelReader;->readIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/Predictor$ModelParam;->reserved:[I

    return-void
.end method

.method static synthetic access$000(Lcom/xgboost/Predictor$ModelParam;)I
    .registers 1

    .line 306
    iget p0, p0, Lcom/xgboost/Predictor$ModelParam;->major_version:I

    return p0
.end method
