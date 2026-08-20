.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleConsumer;->$r8$lambda$uteKWghr9vOsRm1upjAmY13TCNE(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    return-void
.end method
