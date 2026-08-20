.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/Functions$FailableRunnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$28Pb_SeKQ6bTfxeDZAa6fHKd6f0(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
