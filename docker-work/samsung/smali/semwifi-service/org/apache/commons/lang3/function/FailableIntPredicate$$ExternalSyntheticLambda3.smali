.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->$r8$lambda$5aFCvgj1d2QtbTvhr7oqhxpX5sw(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result p0

    return p0
.end method
