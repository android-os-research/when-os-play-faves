.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableSupplier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/Functions$FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/Functions$FailableSupplier;

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$rsug3FRM599opUUyjIcyG6nLTxA(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
