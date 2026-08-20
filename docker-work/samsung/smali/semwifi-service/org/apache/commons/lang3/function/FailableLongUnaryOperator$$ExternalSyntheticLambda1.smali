.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->$r8$lambda$NFnT97HYK7NgIzyDmBA1XwnsE-4(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J

    move-result-wide p0

    return-wide p0
.end method
