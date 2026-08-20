.class public final synthetic Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->$r8$lambda$XvKMI1gq_YeXWUlp1dt-9qDEF7Y(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
