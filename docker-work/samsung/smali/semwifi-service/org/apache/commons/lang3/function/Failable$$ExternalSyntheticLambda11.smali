.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$LiEGE_d3bKDceVIN0DybO2asImA(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
