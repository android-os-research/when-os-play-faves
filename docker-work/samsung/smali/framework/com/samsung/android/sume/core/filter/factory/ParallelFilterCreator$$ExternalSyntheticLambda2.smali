.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;->lambda$newFilter$1(Ljava/util/List;I)V

    return-void
.end method
