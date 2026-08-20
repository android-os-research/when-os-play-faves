.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableBiPredicate$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableBiPredicate;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiPredicate;->$r8$lambda$skwBXolMbtdDPLyodxkmU4cK-3E(Lorg/apache/commons/lang3/function/FailableBiPredicate;Lorg/apache/commons/lang3/function/FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
