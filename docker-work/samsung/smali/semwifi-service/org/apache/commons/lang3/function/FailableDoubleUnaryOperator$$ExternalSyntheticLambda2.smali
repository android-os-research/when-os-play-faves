.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;->$r8$lambda$8jebZH690mTBFTL2Dc0A7tasA10(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p0

    return-wide p0
.end method
