.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$findAvailableUnaryKey$20(Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    return-object v0
.end method
