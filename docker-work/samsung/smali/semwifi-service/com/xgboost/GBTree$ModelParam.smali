.class Lcom/xgboost/GBTree$ModelParam;
.super Ljava/lang/Object;
.source "GBTree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/GBTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelParam"
.end annotation


# instance fields
.field final num_pbuffer:J

.field final num_roots:I

.field final num_trees:I

.field final reserved:[I

.field final size_leaf_vector:I


# direct methods
.method constructor <init>(Lcom/xgboost/ModelReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/GBTree$ModelParam;->num_trees:I

    .line 124
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/GBTree$ModelParam;->num_roots:I

    .line 125
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    .line 126
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    .line 127
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xgboost/GBTree$ModelParam;->num_pbuffer:J

    .line 128
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    .line 129
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xgboost/GBTree$ModelParam;->size_leaf_vector:I

    const/16 v0, 0x1f

    .line 130
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/xgboost/GBTree$ModelParam;->reserved:[I

    .line 131
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    return-void
.end method
