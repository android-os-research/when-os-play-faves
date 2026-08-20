.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBooleanSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$atdANCr_kyXV5GrWKwoODo26b8Q(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
