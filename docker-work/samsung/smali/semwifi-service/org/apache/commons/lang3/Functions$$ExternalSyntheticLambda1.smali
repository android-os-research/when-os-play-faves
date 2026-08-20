.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/Functions$FailableSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/Functions$FailableFunction;

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$qE8iCs2DsY7xrP1SRZfqWNTBs9s(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
