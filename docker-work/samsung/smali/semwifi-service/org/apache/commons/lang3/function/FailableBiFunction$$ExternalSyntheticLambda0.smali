.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableBiFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiFunction;->$r8$lambda$C2NfyN_b8FGwUnaPmOUxrQAowbM(Lorg/apache/commons/lang3/function/FailableBiFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
