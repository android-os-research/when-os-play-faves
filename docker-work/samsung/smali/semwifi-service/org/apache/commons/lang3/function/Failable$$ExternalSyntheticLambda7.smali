.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableCallable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda7;->f$0:Lorg/apache/commons/lang3/function/FailableCallable;

    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableCallable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
