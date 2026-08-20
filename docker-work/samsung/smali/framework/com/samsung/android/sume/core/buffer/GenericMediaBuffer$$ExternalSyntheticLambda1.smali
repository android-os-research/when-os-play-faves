.class public final synthetic Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->lambda$getPlanesFormat$0(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object p1

    return-object p1
.end method
