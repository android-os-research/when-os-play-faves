.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .registers 3

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate;->$r8$lambda$R8ckRYSa7X9D-jf2TrmQg0oNhPE(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result p0

    return p0
.end method
