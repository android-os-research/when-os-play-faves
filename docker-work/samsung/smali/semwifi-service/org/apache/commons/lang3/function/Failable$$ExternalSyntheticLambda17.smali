.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$2HnmE_CC4PQoljkAd0OZ7ZRns0g(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
