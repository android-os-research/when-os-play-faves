.class public Lorg/tensorflow/lite/Tensor$QuantizationParams;
.super Ljava/lang/Object;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantizationParams"
.end annotation


# instance fields
.field public final scale:F

.field public final zeroPoint:I


# direct methods
.method public constructor <init>(FI)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->scale:F

    .line 76
    iput p2, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->zeroPoint:I

    return-void
.end method


# virtual methods
.method public getScale()F
    .registers 1

    .line 81
    iget p0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->scale:F

    return p0
.end method

.method public getZeroPoint()I
    .registers 1

    .line 86
    iget p0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->zeroPoint:I

    return p0
.end method
