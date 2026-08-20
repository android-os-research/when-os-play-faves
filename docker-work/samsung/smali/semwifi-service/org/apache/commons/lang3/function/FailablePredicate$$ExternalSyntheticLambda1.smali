.class public final synthetic Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailablePredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailablePredicate;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->$r8$lambda$UISSVRtSfVVtuWXd_rvfMQVbuqg(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
