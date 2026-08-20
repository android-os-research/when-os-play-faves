.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$doStringfy$18(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
