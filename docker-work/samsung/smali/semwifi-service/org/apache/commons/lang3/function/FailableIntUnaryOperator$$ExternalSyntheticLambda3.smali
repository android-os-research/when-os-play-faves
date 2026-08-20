.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;->$r8$lambda$DXWHGN0EUU1VJJ6ZgfDA3ZVCjCE(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result p0

    return p0
.end method
