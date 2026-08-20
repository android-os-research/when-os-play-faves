.class public final synthetic Lcom/samsung/android/sume/core/graph/GraphEdge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/samsung/android/sume/core/evaluate/EvalNone;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/evaluate/EvalNone;-><init>()V

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    return-object v0
.end method
