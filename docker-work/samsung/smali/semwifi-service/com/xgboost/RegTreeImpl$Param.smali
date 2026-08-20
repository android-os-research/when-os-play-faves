.class Lcom/xgboost/RegTreeImpl$Param;
.super Ljava/lang/Object;
.source "RegTreeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/RegTreeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Param"
.end annotation


# instance fields
.field final max_depth:I

.field final num_deleted:I

.field final num_feature:I

.field final num_nodes:I

.field final num_roots:I

.field final reserved:[I

.field final size_leaf_vector:I


# direct methods
.method constructor <init>(Lcom/xgboost/ModelReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->num_roots:I

    .line 118
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->num_nodes:I

    .line 119
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->num_deleted:I

    .line 120
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->max_depth:I

    .line 121
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->num_feature:I

    .line 123
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/RegTreeImpl$Param;->size_leaf_vector:I

    const/16 v0, 0x1f

    .line 124
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/RegTreeImpl$Param;->reserved:[I

    return-void
.end method
