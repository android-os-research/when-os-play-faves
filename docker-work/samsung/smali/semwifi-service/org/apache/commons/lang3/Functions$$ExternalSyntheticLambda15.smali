.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableBiFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableBiFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/Functions$FailableBiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/Functions$FailableBiFunction;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$qLj0VIf3W0cou-CeKOUOg1kIUQg(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
