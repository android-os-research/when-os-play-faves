.class Lcom/xgboost/GBLinear$ModelParam;
.super Ljava/lang/Object;
.source "GBLinear.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xgboost/GBLinear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelParam"
.end annotation


# instance fields
.field final reserved:[I


# direct methods
.method constructor <init>(Lcom/xgboost/ModelReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readUnsignedInt()I

    .line 79
    invoke-virtual {p1}, Lcom/xgboost/ModelReader;->readInt()I

    const/16 v0, 0x20

    .line 80
    invoke-virtual {p1, v0}, Lcom/xgboost/ModelReader;->readIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/xgboost/GBLinear$ModelParam;->reserved:[I

    return-void
.end method
