.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/samsung/android/sume/core/format/MediaFormat;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$new$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method
