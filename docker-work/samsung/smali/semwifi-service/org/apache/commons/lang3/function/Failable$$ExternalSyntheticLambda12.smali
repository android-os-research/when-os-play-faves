.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda12;->f$0:Lorg/apache/commons/lang3/function/FailableBiFunction;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$CIPsV_HEtcRrDDlhwOxA2X4oJHg(Lorg/apache/commons/lang3/function/FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
