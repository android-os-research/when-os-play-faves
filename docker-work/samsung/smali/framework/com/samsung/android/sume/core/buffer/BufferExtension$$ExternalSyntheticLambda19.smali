.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;
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

    check-cast p2, Landroid/hardware/HardwareBuffer;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$new$4(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
