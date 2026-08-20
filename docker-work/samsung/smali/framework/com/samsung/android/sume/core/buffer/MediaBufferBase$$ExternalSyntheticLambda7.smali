.class public final synthetic Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->lambda$transformDataTo$7$com-samsung-android-sume-core-buffer-MediaBufferBase(Ljava/lang/Object;)V

    return-void
.end method
