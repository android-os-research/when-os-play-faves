.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer;->$r8$lambda$l_MmYkwdFod6cr3-MVg5Ky-bwd4(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method
